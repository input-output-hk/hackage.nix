{
  "0.1.0.0" = {
    sha256 = "4a29953916ee687fdc67fe1a30fab904a4afce4f9f7c239c2053db0a5283f548";
    revisions = {
      r0 = {
        nix = import ../hackage/g2-0.1.0.0-r0-c02699a2421554cf6714ca6432b4cc72f8717503d6717681c87c8bfb41d8dea2.nix;
        revNum = 0;
        sha256 = "c02699a2421554cf6714ca6432b4cc72f8717503d6717681c87c8bfb41d8dea2";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "d8b20838c71fc1b39c699c3c82ee1b5e09d27226c324b656d7a255eced9d762e";
    revisions = {
      r0 = {
        nix = import ../hackage/g2-0.1.0.1-r0-af885c7b0f36bde2b1712fee7c809cf579f7081c6dce77a918ade85bd5effaf4.nix;
        revNum = 0;
        sha256 = "af885c7b0f36bde2b1712fee7c809cf579f7081c6dce77a918ade85bd5effaf4";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "3865c4d6f159b6dbc8d5ae2a462a6ea39bcf0c3bc97bde40eb591d7aca689bb4";
    revisions = {
      r0 = {
        nix = import ../hackage/g2-0.2.0.0-r0-cf9bc44625db9e992108cca93489f3bd645daac2426527ebcd9be4fb2223b379.nix;
        revNum = 0;
        sha256 = "cf9bc44625db9e992108cca93489f3bd645daac2426527ebcd9be4fb2223b379";
      };
      r1 = {
        nix = import ../hackage/g2-0.2.0.0-r1-aef4ea789d3e29500ed4e35a38751d155b5afe509d63db52af6632291baf6902.nix;
        revNum = 1;
        sha256 = "aef4ea789d3e29500ed4e35a38751d155b5afe509d63db52af6632291baf6902";
      };
      default = "r1";
    };
  };
}