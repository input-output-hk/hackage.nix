{
  "1.6.0.0" = {
    sha256 = "303f1deaba594489712351b969b6bc93dc27272b03848b28e44cfe61b5a5cad2";
    revisions = {
      r0 = {
        nix = import ../hackage/exference-1.6.0.0-r0-ce962e47bf6cebc6590f9372115cbd41409a61aaed12e25817374c307d9982e1.nix;
        revNum = 0;
        sha256 = "ce962e47bf6cebc6590f9372115cbd41409a61aaed12e25817374c307d9982e1";
      };
      r1 = {
        nix = import ../hackage/exference-1.6.0.0-r1-c9d2fab979db36a73327b70bbdc74d18d1c9639657e8cee665a173014bb09e42.nix;
        revNum = 1;
        sha256 = "c9d2fab979db36a73327b70bbdc74d18d1c9639657e8cee665a173014bb09e42";
      };
      r2 = {
        nix = import ../hackage/exference-1.6.0.0-r2-6da1fd19602e76b28cae7de791e967ed1d643b5345ab5a4405c13efea4c196f8.nix;
        revNum = 2;
        sha256 = "6da1fd19602e76b28cae7de791e967ed1d643b5345ab5a4405c13efea4c196f8";
      };
      r3 = {
        nix = import ../hackage/exference-1.6.0.0-r3-e3f9d32a394fc1790ce74c5a9ba629f97dbd3a11796d4ac1e5f642f76802cc56.nix;
        revNum = 3;
        sha256 = "e3f9d32a394fc1790ce74c5a9ba629f97dbd3a11796d4ac1e5f642f76802cc56";
      };
      r4 = {
        nix = import ../hackage/exference-1.6.0.0-r4-334ddeb8112ca62909d009f5324b159b35a4f7bad86d7f25469d2172d1152cfb.nix;
        revNum = 4;
        sha256 = "334ddeb8112ca62909d009f5324b159b35a4f7bad86d7f25469d2172d1152cfb";
      };
      default = "r4";
    };
  };
}