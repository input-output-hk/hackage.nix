{
  "2.0" = {
    sha256 = "08ffc550c1880bfd5702606913a2b5a1c5810f7d58dc04b5b96b7ebfb07489eb";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-elastic-inference-2.0-r0-5255e285b3e1c92df4458ab3ae7951b52ee5e5860f89b52b408be505e2e016a9.nix;
        revNum = 0;
        sha256 = "5255e285b3e1c92df4458ab3ae7951b52ee5e5860f89b52b408be505e2e016a9";
      };
      r1 = {
        nix = import ../hackage/amazonka-elastic-inference-2.0-r1-edc6d3999324ef2f0c8ab765b797802afb5994461f316fe9200e6d37245c154d.nix;
        revNum = 1;
        sha256 = "edc6d3999324ef2f0c8ab765b797802afb5994461f316fe9200e6d37245c154d";
      };
      default = "r1";
    };
  };
}