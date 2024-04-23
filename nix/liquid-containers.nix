{
  "0.6.2.1" = {
    sha256 = "34e41db9c5b5d400572ef56ba2976239f59bd39273c6ddc4527af782c3d3691e";
    revisions = {
      r0 = {
        nix = import ../hackage/liquid-containers-0.6.2.1-r0-e04f83f398818b11bdabe7df3219bb6d300edb083bf3bf21f8ff8e220552a8c9.nix;
        revNum = 0;
        sha256 = "e04f83f398818b11bdabe7df3219bb6d300edb083bf3bf21f8ff8e220552a8c9";
      };
      r1 = {
        nix = import ../hackage/liquid-containers-0.6.2.1-r1-e0e5eeb4422be7c9a46af2809e76afb9d7d4532a07cd1a6b1413e12f46c9fc32.nix;
        revNum = 1;
        sha256 = "e0e5eeb4422be7c9a46af2809e76afb9d7d4532a07cd1a6b1413e12f46c9fc32";
      };
      default = "r1";
    };
  };
  "0.6.4.1" = {
    sha256 = "ca78dae714c2a7d7d5ffe15cbe186689aa34d77c3bddb04df386df5877c74914";
    revisions = {
      r0 = {
        nix = import ../hackage/liquid-containers-0.6.4.1-r0-c7e5f64adb134b98d61c57b7f801a6e7e1b52c8391d21ebf024740a56dee9a9a.nix;
        revNum = 0;
        sha256 = "c7e5f64adb134b98d61c57b7f801a6e7e1b52c8391d21ebf024740a56dee9a9a";
      };
      r1 = {
        nix = import ../hackage/liquid-containers-0.6.4.1-r1-604be1fb54efc00cd397e21bbebd0f93f0496e5bd70563f62db46dc75e6b5823.nix;
        revNum = 1;
        sha256 = "604be1fb54efc00cd397e21bbebd0f93f0496e5bd70563f62db46dc75e6b5823";
      };
      r2 = {
        nix = import ../hackage/liquid-containers-0.6.4.1-r2-0b748ba45ecbf02f46492c119907330f579fa3a7c976659d68a1dc67e062632d.nix;
        revNum = 2;
        sha256 = "0b748ba45ecbf02f46492c119907330f579fa3a7c976659d68a1dc67e062632d";
      };
      default = "r2";
    };
  };
}