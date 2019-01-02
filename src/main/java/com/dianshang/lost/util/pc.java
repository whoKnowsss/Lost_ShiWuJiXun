package com.dianshang.lost.util;

/**
 * Created by 11655 on 2017/4/13.
 */

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang3.StringEscapeUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

// 爬取百度图片
public class pc {

    public static void main(String[] args) throws Exception {
        String downloadPath = "C:\\Users\\11655\\Desktop\\123";
        List<String> list = nameList("一卡通");
        getPictures(list, 1, downloadPath); //1代表下载一页，一页一般有30张图片，将图片下载到本地
//        List<String> urls = getPicturesURL("钥匙", 6);  //输入关键字，和数目，返回url的list
//        for (String a:urls){
//            System.out.println(a);
//        }
    }

    public static List<String> getPicturesURL(String keyWord, int num) throws Exception { //
       List<String> urls=new ArrayList<String>();
        Document document = null;
        String url = "http://image.baidu.com/search/avatarjson?tn=resultjsonavatarnew&ie=utf-8&word=" + keyWord + "&cg=star&pn=" + 0 * 30 + "&rn=30&itg=0&z=0&fr=&width=&height=&lm=-1&ic=0&s=0&st=-1&gsm=" + Integer.toHexString(0 * 30);
        sop(url);
        document = Jsoup.connect(url).data("query", "Java")//请求参数
                .userAgent("Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)")//设置urer-agent  get();
                .timeout(5000)
                .get();
        String xmlSource = document.toString();
        xmlSource = StringEscapeUtils.unescapeHtml3(xmlSource);
        sop(xmlSource);
        String reg = "objURL\":\"http://.+?\\.jpg";
        Pattern pattern = Pattern.compile(reg);
        Matcher m = pattern.matcher(xmlSource);
        String finalURL = "";
        String tempPath = "";
        int i = 0;
        while (m.find() && i < num) {
            finalURL = m.group().substring(9);
            urls.add(finalURL);
            sop("第" + (++i) + "张图片" + keyWord + ":" + finalURL);

//                sop("第"+(++i)+"张图片，url："+);
        }
return  urls;
    }

    //获得图片
    public static void getPictures(List<String> keywordList, int max, String downloadPath) throws Exception { // key为关键词,max作为爬取的页数
        String gsm = Integer.toHexString(max) + "";
        String finalURL = "";
        String tempPath = "";
        for (String keyword : keywordList) {
            tempPath = downloadPath;
            if (!tempPath.endsWith("\\")) {
                tempPath = downloadPath + "\\";
            }
            tempPath = tempPath + keyword + "\\";
            File f = new File(tempPath);
            if (!f.exists()) {
                f.mkdirs();
            }
            int picCount = 1;
            for (int page = 0; page <= max; page++) {
                sop("正在下载第" + page + "页面");
                Document document = null;
                try {
                    String url = "http://image.baidu.com/search/avatarjson?tn=resultjsonavatarnew&ie=utf-8&word=" + keyword + "&cg=star&pn=" + page * 30 + "&rn=30&itg=0&z=0&fr=&width=&height=&lm=-1&ic=0&s=0&st=-1&gsm=" + Integer.toHexString(page * 30);
                    sop(url);
                    document = Jsoup.connect(url).data("query", "Java")//请求参数
                            .userAgent("Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)")//设置urer-agent  get();
                            .timeout(5000)
                            .get();
                    String xmlSource = document.toString();
                    xmlSource = StringEscapeUtils.unescapeHtml3(xmlSource);
                    sop(xmlSource);
                    String reg = "objURL\":\"http://.+?\\.jpg";
                    Pattern pattern = Pattern.compile(reg);
                    Matcher m = pattern.matcher(xmlSource);
                    while (m.find()) {
                        finalURL = m.group().substring(9);
                        sop(keyword + picCount++ + ":" + finalURL);
                        download(finalURL, tempPath);
                        sop("             下载成功");
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        sop("下载完毕");
        delMultyFile(downloadPath);
        sop("已经删除所有空图");
    }

    public static void delMultyFile(String path) {
        File file = new File(path);
        if (!file.exists())
            throw new RuntimeException("File \"" + path + "\" NotFound when excute the method of delMultyFile()....");
        File[] fileList = file.listFiles();
        File tempFile = null;
        for (File f : fileList) {
            if (f.isDirectory()) {
                delMultyFile(f.getAbsolutePath());
            } else {
                if (f.length() == 0)
                    sop(f.delete() + "---" + f.getName());
            }
        }
    }

    public static List<String> nameList(String nameList) {
        List<String> arr = new ArrayList<String>();
        String[] list;
        if (nameList.contains(","))
            list = nameList.split(",");
        else if (nameList.contains("、"))
            list = nameList.split("、");
        else if (nameList.contains(" "))
            list = nameList.split(" ");
        else {
            arr.add(nameList);
            return arr;
        }
        for (String s : list) {
            arr.add(s);
        }
        return arr;
    }

    public static void sop(Object obj) {
        System.out.println(obj);
    }

    //根据图片网络地址下载图片
    public static void download(String url, String path) {
        //path = path.substring(0,path.length()-2);
        File file = null;
        File dirFile = null;
        FileOutputStream fos = null;
        HttpURLConnection httpCon = null;
        URLConnection con = null;
        URL urlObj = null;
        InputStream in = null;
        byte[] size = new byte[1024];
        int num = 0;
        try {
            String downloadName = url.substring(url.lastIndexOf("/") + 1);
            dirFile = new File(path);
            if (!dirFile.exists() && path.length() > 0) {
                if (dirFile.mkdir()) {
                    sop("creat document file \"" + path.substring(0, path.length() - 1) + "\" success...\n");
                }
            } else {
                file = new File(path + downloadName);
                fos = new FileOutputStream(file);
                if (url.startsWith("http")) {
                    urlObj = new URL(url);
                    con = urlObj.openConnection();
                    httpCon = (HttpURLConnection) con;
                    in = httpCon.getInputStream();
                    while ((num = in.read(size)) != -1) {
                        for (int i = 0; i < num; i++)
                            fos.write(size[i]);
                    }
                }
            }
        } catch (FileNotFoundException notFoundE) {
            sop("找不到该网络图片....");
        } catch (NullPointerException nullPointerE) {
            sop("找不到该网络图片....");
        } catch (IOException ioE) {
            sop("产生IO异常.....");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                fos.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}