{
  "0.1.0.0" = {
    sha256 = "55bb04a3245066c4e5c7834bc3a11161008f4b24f3ab002375476125a738f368";
    revisions = {
      r0 = {
        nix = import ../hackage/ureader-0.1.0.0-r0-ae19940f9bd74ab90d464754c510d10885630d42181655c89b14ca6bee00e677.nix;
        revNum = 0;
        sha256 = "ae19940f9bd74ab90d464754c510d10885630d42181655c89b14ca6bee00e677";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "68f1a84963e2aae0fa58cab89e873552b585db43a9036db06f6dcf5a2bd2ef87";
    revisions = {
      r0 = {
        nix = import ../hackage/ureader-0.2.0.0-r0-4873ba6e2af7249d304cec9857c2dcf9da0c09d59a11f99f20bcaa5091de029e.nix;
        revNum = 0;
        sha256 = "4873ba6e2af7249d304cec9857c2dcf9da0c09d59a11f99f20bcaa5091de029e";
      };
      default = "r0";
    };
  };
}