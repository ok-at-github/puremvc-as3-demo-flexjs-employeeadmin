/*
 PureMVC AS3 Demo - Flex Employee Admin 
 Copyright (c) 2007-10 Clifford Hall <clifford.hall@puremvc.org>
 Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package org.puremvc.as3.demos.flex.employeeadmin
{
	import org.puremvc.as3.demos.flex.employeeadmin.controller.*;
	import org.puremvc.as3.patterns.facade.Facade;
	
	public class ApplicationFacade extends Facade
	{
		// Notification name constants
		public static const STARTUP:String 			= "startup";
		
		public static const NEW_USER:String 		= "newUser";
		public static const DELETE_USER:String 		= "deleteUser";
		public static const CANCEL_SELECTED:String	= "cancelSelected";
		
		public static const POPULATE_USERS:String	= "populateUsers";
		public static const USER_SELECTED:String	= "userSelected";
		public static const USER_ADDED:String		= "userAdded";
		public static const USER_UPDATED:String		= "userUpdated";
		public static const USER_DELETED:String		= "userDeleted";

		public static const ADD_ROLE:String 		= "addRole";
		public static const ADD_ROLE_RESULT:String 	= "addRoleResult";

		public static const ROLE_ALREADY_EXISTS:String 	= "roleAlreadyExists";
		
		
		/**
		 * Singleton Factory Method
		 */
		public static function getInstance() : ApplicationFacade {
			if ( instance == null ) instance = new ApplicationFacade( );
			return ApplicationFacade( instance ) ;
		}
		
		/**
		 * Start the application
		 */
		 public function startup( app:EmployeeAdmin ):void
		 {
		 	sendNotification( STARTUP, app );	
		 }

		/**
		 * Register Commands with the Controller 
		 */
		override protected function initializeController( ) : void 
		{
			super.initializeController();			
			registerCommand( STARTUP, StartupCommand );
			registerCommand( DELETE_USER, DeleteUserCommand );
			registerCommand( ADD_ROLE_RESULT, AddRoleResultCommand );
		}
		
	}
}