component {
    this.name="FRAPI SDK demo app";

    function onApplicationStart() {
        application.FRAPI = new modules.FRAPISDK.models.FRTransService();
    }

}