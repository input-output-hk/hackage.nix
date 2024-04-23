{
  "0.1.0.0" = {
    sha256 = "f0aaf28567df858bc872c9c5d6a0e67d0d033d558d27c2ec01ccd76ef5bc129d";
    revisions = {
      r0 = {
        nix = import ../hackage/shared-fields-0.1.0.0-r0-26a5f8efac5669f5b1e1302f8d478ed18d279f42af47c2411274083c51116090.nix;
        revNum = 0;
        sha256 = "26a5f8efac5669f5b1e1302f8d478ed18d279f42af47c2411274083c51116090";
      };
      r1 = {
        nix = import ../hackage/shared-fields-0.1.0.0-r1-c5112884a01916135e2fc1432b2cdcfb3a554cd2dc9673d0ccd2305b1809f568.nix;
        revNum = 1;
        sha256 = "c5112884a01916135e2fc1432b2cdcfb3a554cd2dc9673d0ccd2305b1809f568";
      };
      default = "r1";
    };
  };
  "0.1.1.0" = {
    sha256 = "653fc21816a289b3c05e7dbb25ebc8e0d32c75fc64e5c9385655af34a02c32f1";
    revisions = {
      r0 = {
        nix = import ../hackage/shared-fields-0.1.1.0-r0-441d97faf70185d22fc4151b808f033de6c88a24d13df643e2d530089bf3ed15.nix;
        revNum = 0;
        sha256 = "441d97faf70185d22fc4151b808f033de6c88a24d13df643e2d530089bf3ed15";
      };
      default = "r0";
    };
  };
  "0.1.2.0" = {
    sha256 = "beaa4ccea1d38ea34dd675c91052bebacaccf99af4f9f2d24488cc645f05df61";
    revisions = {
      r0 = {
        nix = import ../hackage/shared-fields-0.1.2.0-r0-dbfbea50b2d66879681ee69e87022126e6cfa59cabcf5c202aa2a78ea6f80ee9.nix;
        revNum = 0;
        sha256 = "dbfbea50b2d66879681ee69e87022126e6cfa59cabcf5c202aa2a78ea6f80ee9";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "a7044f887276d9d630f613313c961af265027c6aa1ba8acf8ec402db0837f680";
    revisions = {
      r0 = {
        nix = import ../hackage/shared-fields-0.2.0.0-r0-4062643812e6cbe5f6d113d462d7d8e0982a69cc3c0c886a03e2cb34e892e740.nix;
        revNum = 0;
        sha256 = "4062643812e6cbe5f6d113d462d7d8e0982a69cc3c0c886a03e2cb34e892e740";
      };
      default = "r0";
    };
  };
}