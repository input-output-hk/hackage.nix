{
  "0.1" = {
    sha256 = "0781b774381bd0b46d01f94a01358435032a0be099d39146ed1e680b78f3ecd9";
    revisions = {
      r0 = {
        nix = import ../hackage/rme-what4-0.1-r0-49572468bc50101304bda83223ddd19512cd053c962deff022510c758a002015.nix;
        revNum = 0;
        sha256 = "49572468bc50101304bda83223ddd19512cd053c962deff022510c758a002015";
      };
      r1 = {
        nix = import ../hackage/rme-what4-0.1-r1-3f1fd77d63e1ca1b9719525720dde4a24c9dc1ccae5e6e72bf30558418b984a6.nix;
        revNum = 1;
        sha256 = "3f1fd77d63e1ca1b9719525720dde4a24c9dc1ccae5e6e72bf30558418b984a6";
      };
      default = "r1";
    };
  };
}