{
  "0.1.0.0" = {
    sha256 = "0ad4eaa0fbadf1c0bd7d1c17660d0ec39a50e59355ab8640ddf8f66704e453d8";
    revisions = {
      r0 = {
        nix = import ../hackage/Aoide-0.1.0.0-r0-faf65610909e9a33f09c9fa2ab85497dd8fc10351e0d3e8b06152ce4c6b70145.nix;
        revNum = 0;
        sha256 = "faf65610909e9a33f09c9fa2ab85497dd8fc10351e0d3e8b06152ce4c6b70145";
      };
      r1 = {
        nix = import ../hackage/Aoide-0.1.0.0-r1-ae5b6db3831da7cfbe3877d16e8831577f4463222ef1e3cddc0254c9e49352df.nix;
        revNum = 1;
        sha256 = "ae5b6db3831da7cfbe3877d16e8831577f4463222ef1e3cddc0254c9e49352df";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "12491acfc05f312318b8893b5187ebe0860fb043bf45670f1d49d6407ab4683d";
    revisions = {
      r0 = {
        nix = import ../hackage/Aoide-0.1.0.1-r0-7ef2311ac3bdb77701c18353c8120e9fc371887bfb6d5279ed0748af7e22fc01.nix;
        revNum = 0;
        sha256 = "7ef2311ac3bdb77701c18353c8120e9fc371887bfb6d5279ed0748af7e22fc01";
      };
      default = "r0";
    };
  };
  "0.1.0.2" = {
    sha256 = "6c61703d29e75f48c5f333ba014cd0041c6883de23ab7c41b17b3deed0db8dda";
    revisions = {
      r0 = {
        nix = import ../hackage/Aoide-0.1.0.2-r0-ba93dce1e40db7106895a20f47625a664ff75cca442344fcbbc27bc73238b568.nix;
        revNum = 0;
        sha256 = "ba93dce1e40db7106895a20f47625a664ff75cca442344fcbbc27bc73238b568";
      };
      default = "r0";
    };
  };
}