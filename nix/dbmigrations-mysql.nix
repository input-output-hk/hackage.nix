{
  "2.0.0" = {
    sha256 = "45bd44c9e46bff2923634030ea6f54b9df93ef3b2ea38749c5263f7e00421f5c";
    revisions = {
      r0 = {
        nix = import ../hackage/dbmigrations-mysql-2.0.0-r0-e5eb81f414283559486770fa8d189c8ac47a896fd76bd8b9c57de308e42c4533.nix;
        revNum = 0;
        sha256 = "e5eb81f414283559486770fa8d189c8ac47a896fd76bd8b9c57de308e42c4533";
      };
      default = "r0";
    };
  };
}