{
  "0.1.0" = {
    sha256 = "b40ae785e35e8eea5d01eaa0ef5ef86d14b91cfebd06d7f50c64751956446908";
    revisions = {
      r0 = {
        nix = import ../hackage/musig2-0.1.0-r0-f981eb0a7221c48ae5bcb821d96f949cafa441c7bc850b2ada2877edef9412c1.nix;
        revNum = 0;
        sha256 = "f981eb0a7221c48ae5bcb821d96f949cafa441c7bc850b2ada2877edef9412c1";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "b71bf37c7dcefbaa1de9472b2c604d89a51636e05efb4d2b3fe9a5f1a9b3d785";
    revisions = {
      r0 = {
        nix = import ../hackage/musig2-0.1.1-r0-cbfc8d772a544dcf50814ae75e9072597f0c88ddebccdc6595c93aca26becee7.nix;
        revNum = 0;
        sha256 = "cbfc8d772a544dcf50814ae75e9072597f0c88ddebccdc6595c93aca26becee7";
      };
      default = "r0";
    };
  };
}