package com.mongodash.dao;

import java.util.Date;

import com.mongodash.model.BuildInfo;
import com.mongodash.model.DatabaseInfo;
import com.mongodash.model.HostInfo;
import com.mongodash.model.Server;
import com.mongodash.model.Server.Type;

public interface ServerDao extends BaseDao<Server> {

	void saveHostInfo(HostInfo hostInfo);
	
	void saveBuildInfo(BuildInfo buildInfo);
	
	void saveDatabaseInfo(DatabaseInfo databaseInfo);
	
	HostInfo getHostInfo(Integer serverId);
	
	BuildInfo getBuildInfo(Integer serverId);
	
	DatabaseInfo getDatabaseInfo(Integer serverId);
	
	void updateInstanceInfo(Integer serverId, String process, String version, Date uptime);
	
	void updateReplInfo(Integer serverId, Type serverType, String replName);
	
}
