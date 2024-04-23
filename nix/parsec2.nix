{
  "1.0.0" = {
    sha256 = "696a33471ac635447b4be2529a8bc2d20fd9ed4e42eb172d4ea4b60b5a590547";
    revisions = {
      r0 = {
        nix = import ../hackage/parsec2-1.0.0-r0-9df55e784f8092e04c0ce67f8a7f10cc1ac4eb2f22c02bc1d1791541b22e769a.nix;
        revNum = 0;
        sha256 = "9df55e784f8092e04c0ce67f8a7f10cc1ac4eb2f22c02bc1d1791541b22e769a";
      };
      r1 = {
        nix = import ../hackage/parsec2-1.0.0-r1-ba47f0d7331657cab05ad40e151b7237ed3783fec7beda6715501d217b0ab8d9.nix;
        revNum = 1;
        sha256 = "ba47f0d7331657cab05ad40e151b7237ed3783fec7beda6715501d217b0ab8d9";
      };
      default = "r1";
    };
  };
  "1.0.1" = {
    sha256 = "9e0834db335562955515970bcc65938700d1cc0ab1159396d75a80b8ae29be1c";
    revisions = {
      r0 = {
        nix = import ../hackage/parsec2-1.0.1-r0-e49a6b8d55c1445a2f369997c8d2a0bcfdec932d9f3d77a2a317c46606f125ee.nix;
        revNum = 0;
        sha256 = "e49a6b8d55c1445a2f369997c8d2a0bcfdec932d9f3d77a2a317c46606f125ee";
      };
      default = "r0";
    };
  };
}