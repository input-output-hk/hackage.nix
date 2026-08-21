{
  "0.1.0" = {
    sha256 = "4535d6422a534150d3e1bb7f73376d366537fb3bc50286c5b2ce6a2c87825a8c";
    revisions = {
      r0 = {
        nix = import ../hackage/redis-schema-0.1.0-r0-614c7721257962bb60dec8dce8119d37f572650e8eaa7ace0f68291a93e99df2.nix;
        revNum = 0;
        sha256 = "614c7721257962bb60dec8dce8119d37f572650e8eaa7ace0f68291a93e99df2";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "7a3a1e51a5fe2e721c6fbf248c130c463c892952824cb217ad8c74fc7f983d49";
    revisions = {
      r0 = {
        nix = import ../hackage/redis-schema-0.2.0-r0-5c24b6f656431a7d94576e7886532c38912e76bfe401d88468a2fe07cf9916b6.nix;
        revNum = 0;
        sha256 = "5c24b6f656431a7d94576e7886532c38912e76bfe401d88468a2fe07cf9916b6";
      };
      default = "r0";
    };
  };
  "0.2.1" = {
    sha256 = "c8d663cbfa70f93d4d7dcbb1693ee1b6b2ecb893cc3833bfe55b5c57618a8606";
    revisions = {
      r0 = {
        nix = import ../hackage/redis-schema-0.2.1-r0-f3c5ea25c70dcc08e3ceb7830ec33dd2daf550bf87586e930644fdb644ffad7c.nix;
        revNum = 0;
        sha256 = "f3c5ea25c70dcc08e3ceb7830ec33dd2daf550bf87586e930644fdb644ffad7c";
      };
      default = "r0";
    };
  };
}