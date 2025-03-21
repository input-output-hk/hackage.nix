{
  "0.0" = {
    sha256 = "d53fdb07f32babe4c3df8ff81af433ffaaf6999522a804217403bc1206daa51c";
    revisions = {
      r0 = {
        nix = import ../hackage/boomwhacker-0.0-r0-c6567f989920d5778702829c12ba8a772b093d6d35fc3590d1a2ca3f3842311e.nix;
        revNum = 0;
        sha256 = "c6567f989920d5778702829c12ba8a772b093d6d35fc3590d1a2ca3f3842311e";
      };
      default = "r0";
    };
  };
  "0.0.1" = {
    sha256 = "fbbd4cd6b069267a1cd139e7de1c61254e2275aceebdb64dcec366c513e2f2ef";
    revisions = {
      r0 = {
        nix = import ../hackage/boomwhacker-0.0.1-r0-9b36d3b3abf9fbfecad161bcac89589b0e22499e704cbdc0b292f1d0e12b51f9.nix;
        revNum = 0;
        sha256 = "9b36d3b3abf9fbfecad161bcac89589b0e22499e704cbdc0b292f1d0e12b51f9";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "e2619fb7dbd959a997da96e3ed8380a0621c798d81b28b65a938f87664c1ac60";
    revisions = {
      r0 = {
        nix = import ../hackage/boomwhacker-0.0.2-r0-525ffd15db691866981a539ae9a61425f750dfbbe58df317fe1b2cbef31a0a79.nix;
        revNum = 0;
        sha256 = "525ffd15db691866981a539ae9a61425f750dfbbe58df317fe1b2cbef31a0a79";
      };
      r1 = {
        nix = import ../hackage/boomwhacker-0.0.2-r1-cbd7f71a588f9b9e803150818f37ad88133915740017004f4ddcc675a16a9843.nix;
        revNum = 1;
        sha256 = "cbd7f71a588f9b9e803150818f37ad88133915740017004f4ddcc675a16a9843";
      };
      default = "r1";
    };
  };
}