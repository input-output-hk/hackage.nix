{
  "0.1.0.0" = {
    sha256 = "7f5f03d83870059b0abb95fb824dddc7f534345c575df756fec93c2790eeab90";
    revisions = {
      r0 = {
        nix = import ../hackage/atomic-file-ops-0.1.0.0-r0-7f9f0e2458379445adc4c35baa020814ada8fd3641197eadaf8ecae2192041e1.nix;
        revNum = 0;
        sha256 = "7f9f0e2458379445adc4c35baa020814ada8fd3641197eadaf8ecae2192041e1";
      };
      r1 = {
        nix = import ../hackage/atomic-file-ops-0.1.0.0-r1-5c2396096b45aa8aaa81b6879f3cf760c31a16223c2099ad719d072b7a324240.nix;
        revNum = 1;
        sha256 = "5c2396096b45aa8aaa81b6879f3cf760c31a16223c2099ad719d072b7a324240";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "c85c08968bd6f4c83b8621d2be8fff4b1fac24b19ec37c800003902610980bb0";
    revisions = {
      r0 = {
        nix = import ../hackage/atomic-file-ops-0.1.0.1-r0-b042a7dafb15873c1ddb2ff78efc7576bcfe845e06cc3a3399ace2e39f9e68a8.nix;
        revNum = 0;
        sha256 = "b042a7dafb15873c1ddb2ff78efc7576bcfe845e06cc3a3399ace2e39f9e68a8";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "80f28e4743e84fa4914198faa7391ef4c84f4afed98150d564c81e5fc1344f43";
    revisions = {
      r0 = {
        nix = import ../hackage/atomic-file-ops-0.2.0.0-r0-ce67f42736cda679ef6977c38c2b3fc1e70e4e73ef2c56c8a42d447115b0e3b5.nix;
        revNum = 0;
        sha256 = "ce67f42736cda679ef6977c38c2b3fc1e70e4e73ef2c56c8a42d447115b0e3b5";
      };
      default = "r0";
    };
  };
  "0.3.0.0" = {
    sha256 = "847483ba115455489d420cd51d097a0639d685a538435a261cf27acbd32bef95";
    revisions = {
      r0 = {
        nix = import ../hackage/atomic-file-ops-0.3.0.0-r0-af7e8ce2351c04d553e16ad4afd95caa17ea853fb8a2617cf0cb6c4d438c1847.nix;
        revNum = 0;
        sha256 = "af7e8ce2351c04d553e16ad4afd95caa17ea853fb8a2617cf0cb6c4d438c1847";
      };
      default = "r0";
    };
  };
}