{
  "1.0.0" = {
    sha256 = "31b00257530e30ac843afd3615fd1ffca4de24bcbb60551a7ef30dffed77de1e";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-s3tables-1.0.0-r0-c046946da6e87083bd2f97199408372455d9454c60c43b45fe203f1ce43ca335.nix;
        revNum = 0;
        sha256 = "c046946da6e87083bd2f97199408372455d9454c60c43b45fe203f1ce43ca335";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "2e11901c9a239089cfff8774dfd031db67c46f1abccd9916d6ead43f60437188";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-s3tables-1.0.1-r0-b8529c0e090ebcb7677391e982b6ac7145b8639d030d6d54da155d33466e26c0.nix;
        revNum = 0;
        sha256 = "b8529c0e090ebcb7677391e982b6ac7145b8639d030d6d54da155d33466e26c0";
      };
      default = "r0";
    };
  };
}