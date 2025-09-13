{
  "1.0.0.0" = {
    sha256 = "63d8f94a6b153d5cc86c05009fade3087931ec925cc948be5bf66b47844831bf";
    revisions = {
      r0 = {
        nix = import ../hackage/orville-postgresql-1.0.0.0-r0-35e9b9f8bc0bc1ee1847bcb5340fa39bed320f1573099ec16ca394726a50593a.nix;
        revNum = 0;
        sha256 = "35e9b9f8bc0bc1ee1847bcb5340fa39bed320f1573099ec16ca394726a50593a";
      };
      default = "r0";
    };
  };
  "1.1.0.0" = {
    sha256 = "14e3be2803c5becc9a58d3d400ae0fef051e206bf0622b449f38184413e9ca87";
    revisions = {
      r0 = {
        nix = import ../hackage/orville-postgresql-1.1.0.0-r0-819b2bbbd2882fa746b268c0127fa49681d0b431fe29d8ca63aa4da11d7c1cfe.nix;
        revNum = 0;
        sha256 = "819b2bbbd2882fa746b268c0127fa49681d0b431fe29d8ca63aa4da11d7c1cfe";
      };
      default = "r0";
    };
  };
}