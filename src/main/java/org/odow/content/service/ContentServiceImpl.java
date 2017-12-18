package org.odow.content.service;

import java.io.FileInputStream;
import java.util.Map;

import org.odow.domain.Content;
import org.springframework.stereotype.Service;

import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.auth.FirebaseCredentials;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

@Service
public class ContentServiceImpl implements ContentService{

	@Override
	public void insert() {
		// TODO Auto-generated method stub
		
		try {
			// Fetch the service account key JSON file contents
			FileInputStream serviceAccount = new FileInputStream("C:\\Java97/likethis-35671-firebase-adminsdk-wd7li-2608cc545b.json");

			Map<String, Object> auth = new HashMap<String, Object>();
			auth.put("uid", "my-service-worker");
			
			// Initialize the app with a service account, granting admin privileges
			FirebaseOptions options = new FirebaseOptions.Builder()
			    .setCredential(FirebaseCredentials.fromCertificate(serviceAccount))
			    .setDatabaseUrl("https://likethis.firebaseio.com")
			    .setDatabaseAuthVariableOverride(auth)
			    .build();
			FirebaseApp.initializeApp(options);

			// As an admin, the app has access to read and write all data, regardless of Security Rules
			DatabaseReference ref = FirebaseDatabase
			    .getInstance()
			    .getReference("restricted_access/secret_document");
			ref.addListenerForSingleValueEvent(new ValueEventListener() {
			    @Override
			    public void onDataChange(DataSnapshot dataSnapshot) {
			        Object document = dataSnapshot.getValue();
			        System.out.println(document);
			    }

				@Override
				public void onCancelled(DatabaseError arg0) {
					// TODO Auto-generated method stub
					
				}
			});
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public Content detail() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
