{
  "0.1.0.0" = {
    sha256 = "1e71879f26e5234d68bae7da3727fa0826505001e84b4a66223b9a0ea202ae04";
    revisions = {
      r0 = {
        nix = import ../hackage/exiftool-0.1.0.0-r0-fb1ba230837371396d566ffddc88ac3a05aa010adfb3615d1434535300779fcb.nix;
        revNum = 0;
        sha256 = "fb1ba230837371396d566ffddc88ac3a05aa010adfb3615d1434535300779fcb";
        };
      r1 = {
        nix = import ../hackage/exiftool-0.1.0.0-r1-46dc85eb38a5e20bb8fa106a9e43a56a0ca52567ef8beaf79a5eb626cd79801b.nix;
        revNum = 1;
        sha256 = "46dc85eb38a5e20bb8fa106a9e43a56a0ca52567ef8beaf79a5eb626cd79801b";
        };
      default = "r1";
      };
    };
  "0.1.1.0" = {
    sha256 = "a0628736f26d715dd37514f2892b549b1215351b08023b021db7d3d8559a1ffc";
    revisions = {
      r0 = {
        nix = import ../hackage/exiftool-0.1.1.0-r0-5311acb0331ec7cc57aa6878209124a19ee032877a835a2a7163697f0af751f1.nix;
        revNum = 0;
        sha256 = "5311acb0331ec7cc57aa6878209124a19ee032877a835a2a7163697f0af751f1";
        };
      default = "r0";
      };
    };
  "0.2.0.0" = {
    sha256 = "4f92bbc6fc8146e7d56113e4de50ebf27bea4451bb3e5785797b7cdc5d110d8d";
    revisions = {
      r0 = {
        nix = import ../hackage/exiftool-0.2.0.0-r0-24e7a61f5951f656b98edc01c0187b559cab80008d96f4368f1603d962980a6b.nix;
        revNum = 0;
        sha256 = "24e7a61f5951f656b98edc01c0187b559cab80008d96f4368f1603d962980a6b";
        };
      r1 = {
        nix = import ../hackage/exiftool-0.2.0.0-r1-7f00f66f68258bff40a5d27e1c24373ab4ae2394b9df3f36808cfed0111ff169.nix;
        revNum = 1;
        sha256 = "7f00f66f68258bff40a5d27e1c24373ab4ae2394b9df3f36808cfed0111ff169";
        };
      r2 = {
        nix = import ../hackage/exiftool-0.2.0.0-r2-eda52cfd621918308ace801d43b22346b777f1fbaa35e3623c71c44a715238b8.nix;
        revNum = 2;
        sha256 = "eda52cfd621918308ace801d43b22346b777f1fbaa35e3623c71c44a715238b8";
        };
      default = "r2";
      };
    };
  }