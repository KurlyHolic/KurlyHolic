package com.example.demo.kulry;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import org.apache.http.HttpHost;
import org.apache.lucene.search.TotalHits;
import org.elasticsearch.action.search.SearchRequest;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.SearchHits;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

@Service
public class MainService {

	private static String ES_INDEX = "item";
	private static String ES_USER_INDEX = "user";
    // 외부 IP
    private static String ES_HOST = "54.176.113.75";
//    private static String ES_HOST = "172.31.7.97";
    private static int ES_PORT = 9200;
    private static String ES_SCHEME = "http";
    
    public Map<String, Object> getSearch(String cate, String keyword) throws IOException {
		// TODO Auto-generated method stub
		HttpHost host = new HttpHost(ES_HOST, ES_PORT, ES_SCHEME);
		  
		RestHighLevelClient restHighLevelClient = new RestHighLevelClient(
		            RestClient.builder(
		                    new HttpHost(ES_HOST, ES_PORT, ES_SCHEME)));
	    SearchRequest searchRequest = new SearchRequest(ES_INDEX); 
		  
		SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder(); 

		System.out.println("cate="+cate);
		System.out.println("keyword="+keyword);
		searchSourceBuilder.query(QueryBuilders.matchQuery(cate, keyword));
	  
		// 크기
		searchSourceBuilder.size(10);
		searchRequest.source(searchSourceBuilder);
		
		SearchResponse searchResponse = restHighLevelClient.search(searchRequest, RequestOptions.DEFAULT);
		
		SearchHits hits = searchResponse.getHits();
		
		TotalHits totalHits = hits.getTotalHits();
		
		// search total count
		long numHits = totalHits.value;
		
		SearchHit[] searchHits = hits.getHits();
		
		Map<String, Object> retMap = new Gson().fromJson(
			searchResponse.toString(), new TypeToken<HashMap<String, Object>>() {}.getType()
		);
		Map<String, Object> hitss = (Map<String, Object>) retMap.get("hits");
		
		System.out.println(hitss.get("hits").toString());
		
		restHighLevelClient.close();
		
		return hitss;
	}
    
    public Map<String, Object> userLogin(String id, String password) throws IOException {
		// TODO Auto-generated method stub
		HttpHost host = new HttpHost(ES_HOST, ES_PORT, ES_SCHEME);
		  
		RestHighLevelClient restHighLevelClient = new RestHighLevelClient(
		            RestClient.builder(
		                    new HttpHost(ES_HOST, ES_PORT, ES_SCHEME)));
	    SearchRequest searchRequest = new SearchRequest(ES_USER_INDEX); 
		  
		SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder(); 

		System.out.println("id="+id);
		System.out.println("password="+password);
		searchSourceBuilder.query(QueryBuilders.multiMatchQuery(id, "user_id", "user_pw"));
		searchRequest.source(searchSourceBuilder);
		
		SearchResponse searchResponse = restHighLevelClient.search(searchRequest, RequestOptions.DEFAULT);
		
		SearchHits hits = searchResponse.getHits();
		
		TotalHits totalHits = hits.getTotalHits();
		
		// search total count
		long numHits = totalHits.value;
		
		SearchHit[] searchHits = hits.getHits();
		
		Map<String, Object> retMap = new Gson().fromJson(
			searchResponse.toString(), new TypeToken<HashMap<String, Object>>() {}.getType()
		);
		
		Map<String, Object> hitss = (Map<String, Object>) retMap.get("hits");
		
		System.out.println(hitss.get("hits").toString());
		
		restHighLevelClient.close();
		
		return hitss;
	}
    
    public Map<String, Object> termSearch(String index, String cate, String keyword) throws IOException {
		// TODO Auto-generated method stub
		HttpHost host = new HttpHost(ES_HOST, ES_PORT, ES_SCHEME);
		  
		RestHighLevelClient restHighLevelClient = new RestHighLevelClient(
		            RestClient.builder(
		                    new HttpHost(ES_HOST, ES_PORT, ES_SCHEME)));
	    SearchRequest searchRequest = new SearchRequest(index); 
		  
		SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder(); 

		System.out.println("cate="+cate);
		System.out.println("keyword="+keyword);
		searchSourceBuilder.query(QueryBuilders.termQuery(cate, keyword));
		searchRequest.source(searchSourceBuilder);
		
		SearchResponse searchResponse = restHighLevelClient.search(searchRequest, RequestOptions.DEFAULT);
		
		SearchHits hits = searchResponse.getHits();
		
		TotalHits totalHits = hits.getTotalHits();
		
		// search total count
		long numHits = totalHits.value;
		
		SearchHit[] searchHits = hits.getHits();
		
		Map<String, Object> retMap = new Gson().fromJson(
			searchResponse.toString(), new TypeToken<HashMap<String, Object>>() {}.getType()
		);
		
		Map<String, Object> hitss = (Map<String, Object>) retMap.get("hits");
		
		System.out.println(hitss.get("hits").toString());
		
		restHighLevelClient.close();
		
		return hitss;
	}
    
    public Map<String, Object> getTabList(String userId, String tab) {
    	String itemRcmdApiUrl = "http://54.176.113.75:5000/item_rcmd/"+userId+"/"+tab;

        Map<String, Object> retMap = new HashMap<String, Object>();
        
        HttpURLConnection connection = null;
        try {
            URL url = new URL(itemRcmdApiUrl);

            connection = (HttpURLConnection)url.openConnection();
            connection.setRequestMethod("GET");
            connection.setRequestProperty("Content-Type", "application/json");
            connection.setDoOutput(true);

            BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));

            String resultValues = in.readLine().replace("[", "").replace("]", "");

            System.out.println(resultValues);
            String [] resultValue = resultValues.split(", ");

            System.out.println(resultValue[0]);

            RestHighLevelClient client = new RestHighLevelClient(
                    RestClient.builder(
                            new HttpHost(ES_HOST, ES_PORT, ES_SCHEME)));

            SearchRequest searchRequest = new SearchRequest(ES_INDEX);
            SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
            searchSourceBuilder.query(QueryBuilders.termsQuery("_id", resultValue));
            searchRequest.source(searchSourceBuilder);

            SearchResponse searchResponse = client.search(searchRequest, RequestOptions.DEFAULT);

            SearchHits hits = searchResponse.getHits();

            TotalHits totalHits = hits.getTotalHits();
            // the total number of hits, must be interpreted in the context of totalHits.relation
            long numHits = totalHits.value;

            System.out.println(numHits);

            // whether the number of hits is accurate (EQUAL_TO) or a lower bound of the total (GREATER_THAN_OR_EQUAL_TO)
            TotalHits.Relation relation = totalHits.relation;
            float maxScore = hits.getMaxScore();
            System.out.println(maxScore);

    		retMap = new Gson().fromJson(
				searchResponse.toString(), new TypeToken<HashMap<String, Object>>() {}.getType()
    		);
            
            SearchHit[] searchHits = hits.getHits();
            for (SearchHit hit : searchHits) {
                // do something with the SearchHit
                System.out.println(hit);
            }

            client.close();



        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (connection != null) {
                connection.disconnect();
            }
        }
        
        return retMap;
    }
}
