CREATE PROCEDURE [dbo].[getDetailsByEmail](
	@email	varchar(50)
)
AS
BEGIN
	

	IF EXISTS(Select * from Owners ow where ow.WebAccessCode = @email)
		BEGIN
			Select OwnersID as userId, FirstName,LastName,Entity as userType, IsLocked,  InvalidAttemptCount,LockedTimeStamp, WebAccessPassword as Pwd from Owners ow where ow.WebAccessCode = @email
		END
	ELSE IF EXISTS(Select * from Advisors aw where aw.WebAccessCode = @email)
		BEGIN
			Select   AdvisorsID as userId, FirstName,LastName,Entity as userType, IsLocked, InvalidAttemptCount,LockedTimeStamp,WebAccessPassword as Pwd from Advisors aw where aw.WebAccessCode = @email
		END
	
END
GO

getDetailsByEmail "anand@gmail.com" ;

