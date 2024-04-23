{
  "0.1" = {
    sha256 = "9d1851e5491637a1ae57d74e219c4621a081f3b9fe17dfd14753c288160e18a5";
    revisions = {
      r0 = {
        nix = import ../hackage/tie-knot-0.1-r0-44a1444927ad0760ca980d511560bbd23ce1b783b7bdd3f7db7f18c99885c436.nix;
        revNum = 0;
        sha256 = "44a1444927ad0760ca980d511560bbd23ce1b783b7bdd3f7db7f18c99885c436";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "e47108f0062c9cc0460c7134934c6070931df3d46ab9323e42d47b6660c97ac6";
    revisions = {
      r0 = {
        nix = import ../hackage/tie-knot-0.2-r0-166f1a44abfb9f8dabdc08993f40765f51c5acdf87d248f077b18423aaa95433.nix;
        revNum = 0;
        sha256 = "166f1a44abfb9f8dabdc08993f40765f51c5acdf87d248f077b18423aaa95433";
      };
      default = "r0";
    };
  };
}