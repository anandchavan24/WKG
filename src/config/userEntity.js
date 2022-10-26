exports.userEntity = class UserEntity {
    emailFields = {
        to: "anand.chavan@joshsoftware.com",
        from: "anand.chavan@joshsoftware.com",
        subject: "Welcome Anand",
        text: "null",
        html: "null"
    }

    setEmailFields(emailFields) {
        this.emailFields = { ...emailFields }
    }

    getEmailFields() {
        return this.emailFields
    }
}