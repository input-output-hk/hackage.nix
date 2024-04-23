{
  "1.2.0" = {
    sha256 = "66884a7d9a58441f01da7010be542954efe75f2e053a0b26d8e2b792dfb165de";
    revisions = {
      r0 = {
        nix = import ../hackage/Hayoo-1.2.0-r0-c87fd078b996777d85820792a6ca77802c0b0ffbad3dcb9f66d3f4510f4fa02a.nix;
        revNum = 0;
        sha256 = "c87fd078b996777d85820792a6ca77802c0b0ffbad3dcb9f66d3f4510f4fa02a";
      };
      default = "r0";
    };
  };
  "1.2.3" = {
    sha256 = "0c11fc8d3b12e9c18e8b52e00f09dd9fbe560f7841b54cee53fd38fe789bf32e";
    revisions = {
      r0 = {
        nix = import ../hackage/Hayoo-1.2.3-r0-ae1ec6816dba39757776b07d832597a4e66843135f95bcecf5d7ae6d59359ab3.nix;
        revNum = 0;
        sha256 = "ae1ec6816dba39757776b07d832597a4e66843135f95bcecf5d7ae6d59359ab3";
      };
      default = "r0";
    };
  };
}