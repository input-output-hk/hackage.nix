{
  "2.0" = {
    sha256 = "9d366848eae10f9ddcb86a54a98d05b990580cfd936d7d02f494ea518ae01fcf";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-applicationcostprofiler-2.0-r0-148f03e833ec624faf151db77beecdf9f88f40ac50408090a0265cde4aada7ba.nix;
        revNum = 0;
        sha256 = "148f03e833ec624faf151db77beecdf9f88f40ac50408090a0265cde4aada7ba";
      };
      r1 = {
        nix = import ../hackage/amazonka-applicationcostprofiler-2.0-r1-c29f37a15b39abbe8a03c16f1fd79478e1dfd532e3298b7e48fda359d1cc09f2.nix;
        revNum = 1;
        sha256 = "c29f37a15b39abbe8a03c16f1fd79478e1dfd532e3298b7e48fda359d1cc09f2";
      };
      default = "r1";
    };
  };
}