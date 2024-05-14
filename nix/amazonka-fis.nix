{
  "2.0" = {
    sha256 = "fea9ddb99a52a93a271d3934048cc7c87cd60fcea5ad44d24edb581a667099b8";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-fis-2.0-r0-48029f170659e2e5d693681eee8624aa9f76b5ec1fcd10ca49cca1cbfa72ddde.nix;
        revNum = 0;
        sha256 = "48029f170659e2e5d693681eee8624aa9f76b5ec1fcd10ca49cca1cbfa72ddde";
      };
      r1 = {
        nix = import ../hackage/amazonka-fis-2.0-r1-5a85fd98d7845a796db7ee0e4f399d23b1c90511c6f852a3260620928d18e475.nix;
        revNum = 1;
        sha256 = "5a85fd98d7845a796db7ee0e4f399d23b1c90511c6f852a3260620928d18e475";
      };
      default = "r1";
    };
  };
}