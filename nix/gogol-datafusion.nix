{
  "0.5.0" = {
    sha256 = "f672834427ae2c04c04ab29e3c49d39b31051a8d3ba5b4bd239bc5568d72203d";
    revisions = {
      r0 = {
        nix = import ../hackage/gogol-datafusion-0.5.0-r0-15eeb6cf2d68ac918bfafb4ebc6a9e91f70545bbe8a573bd403bad1d04d63420.nix;
        revNum = 0;
        sha256 = "15eeb6cf2d68ac918bfafb4ebc6a9e91f70545bbe8a573bd403bad1d04d63420";
      };
      default = "r0";
    };
  };
  "1.0.0" = {
    sha256 = "ce5e0debd8e17398473ce2960ae67b26570b1dbba9ea17f83180470619634864";
    revisions = {
      r0 = {
        nix = import ../hackage/gogol-datafusion-1.0.0-r0-df2cee11237f66f9a7df5bf1245ca875fe101e5ccb4183a3943912b54da702ce.nix;
        revNum = 0;
        sha256 = "df2cee11237f66f9a7df5bf1245ca875fe101e5ccb4183a3943912b54da702ce";
      };
      default = "r0";
    };
  };
}