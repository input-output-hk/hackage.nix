{
  "0.1.0.0" = {
    sha256 = "c8f6a8bf9359362817ae4f1f3464cb20bd70429eb2366039fba71b7828e30831";
    revisions = {
      r0 = {
        nix = import ../hackage/psi-0.1.0.0-r0-bd78985a298ccdcc29d0dfabe091b30c5a78cb9204f1d4cf42149fb3a7fb0bdd.nix;
        revNum = 0;
        sha256 = "bd78985a298ccdcc29d0dfabe091b30c5a78cb9204f1d4cf42149fb3a7fb0bdd";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "4fbd37a54cbbf64a2ce827c8d055ff6b497df36057643abcaac499dd481fd07c";
    revisions = {
      r0 = {
        nix = import ../hackage/psi-0.1.1.0-r0-28c5f75cb665b9016953b919faf8789a16dbc838e7ed97f400892b7328e76e71.nix;
        revNum = 0;
        sha256 = "28c5f75cb665b9016953b919faf8789a16dbc838e7ed97f400892b7328e76e71";
      };
      default = "r0";
    };
  };
}