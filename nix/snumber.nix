{
  "0.1.0.0" = {
    sha256 = "af8a05eb3db07daa4650a22d59bdb36cbee182a9a088c204193e56083f046438";
    revisions = {
      r0 = {
        nix = import ../hackage/snumber-0.1.0.0-r0-43f73c132ff277033af9375264c8a3b5e74d0b5ea85909520400552f4a40f28b.nix;
        revNum = 0;
        sha256 = "43f73c132ff277033af9375264c8a3b5e74d0b5ea85909520400552f4a40f28b";
      };
      r1 = {
        nix = import ../hackage/snumber-0.1.0.0-r1-350e034458781fb2db20852bde230c9526fd4828fe54b1dbcc14434c1e648731.nix;
        revNum = 1;
        sha256 = "350e034458781fb2db20852bde230c9526fd4828fe54b1dbcc14434c1e648731";
      };
      r2 = {
        nix = import ../hackage/snumber-0.1.0.0-r2-8aab066d6d9f8e19c120d7fc1b600b65a7bf1c396a9c140f0e95d6dc65bc8749.nix;
        revNum = 2;
        sha256 = "8aab066d6d9f8e19c120d7fc1b600b65a7bf1c396a9c140f0e95d6dc65bc8749";
      };
      default = "r2";
    };
  };
  "0.2.0" = {
    sha256 = "5dc7b09312551e479a8b27665e95826648ee8c75c45e39a2b7d5e7002dd73d60";
    revisions = {
      r0 = {
        nix = import ../hackage/snumber-0.2.0-r0-cea9f78eaae7c317b9a69cece3f6f06e7ed5d09aa8b0f46873f1de9732ae2c7e.nix;
        revNum = 0;
        sha256 = "cea9f78eaae7c317b9a69cece3f6f06e7ed5d09aa8b0f46873f1de9732ae2c7e";
      };
      r1 = {
        nix = import ../hackage/snumber-0.2.0-r1-bcfc3524a28cced893f7581aa85ba6e4888727371b0ee186a019283eb1d726aa.nix;
        revNum = 1;
        sha256 = "bcfc3524a28cced893f7581aa85ba6e4888727371b0ee186a019283eb1d726aa";
      };
      default = "r1";
    };
  };
  "0.3.0" = {
    sha256 = "9460a93147b4fbb8a68062c7633641617aee96c13814432cd2bc6b0f19f06f9a";
    revisions = {
      r0 = {
        nix = import ../hackage/snumber-0.3.0-r0-4323184b123fee9e9085574e96318b80e0dfb9f30e3b87f60f41093bc33c080a.nix;
        revNum = 0;
        sha256 = "4323184b123fee9e9085574e96318b80e0dfb9f30e3b87f60f41093bc33c080a";
      };
      r1 = {
        nix = import ../hackage/snumber-0.3.0-r1-91e71bc0bd6f8c4a8399608a7565abe770424ed2526c75f2be0e639505355cf3.nix;
        revNum = 1;
        sha256 = "91e71bc0bd6f8c4a8399608a7565abe770424ed2526c75f2be0e639505355cf3";
      };
      default = "r1";
    };
  };
}