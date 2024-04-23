{
  "0.0" = {
    sha256 = "4c27f8f6dca4c6e822cc731fe89ab90712f29acb341ad856791aa97db15199b5";
    revisions = {
      r0 = {
        nix = import ../hackage/accelerate-cublas-0.0-r0-fc589e912e49e5ac825fd269e69549fb818642428e58ec22bbaabc8e878729bf.nix;
        revNum = 0;
        sha256 = "fc589e912e49e5ac825fd269e69549fb818642428e58ec22bbaabc8e878729bf";
      };
      default = "r0";
    };
  };
  "0.1" = {
    sha256 = "c6a7a167ccafb7feae7f54d7a0f3cca5df1b404d19fde74abae090d54a67701a";
    revisions = {
      r0 = {
        nix = import ../hackage/accelerate-cublas-0.1-r0-afd4e126c2217bda5441cd88e09027a202200e438637fead932b585a1fd39ac6.nix;
        revNum = 0;
        sha256 = "afd4e126c2217bda5441cd88e09027a202200e438637fead932b585a1fd39ac6";
      };
      default = "r0";
    };
  };
}