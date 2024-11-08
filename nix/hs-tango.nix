{
  "1.0.0" = {
    sha256 = "ac2c2c0c6ec83324e22ed5b4311de0492e34194467f2b7ef4438abbcc7ed042a";
    revisions = {
      r0 = {
        nix = import ../hackage/hs-tango-1.0.0-r0-b90255ecf8e539487a81e3bfbd573e534153fb2abb86b4f5d90681a7f12c8b78.nix;
        revNum = 0;
        sha256 = "b90255ecf8e539487a81e3bfbd573e534153fb2abb86b4f5d90681a7f12c8b78";
      };
      default = "r0";
    };
  };
  "2.0.0" = {
    sha256 = "9336fe33f120664634972183cefe345106e95a43bada477690ff4c111c8be8b4";
    revisions = {
      r0 = {
        nix = import ../hackage/hs-tango-2.0.0-r0-9cfa1f35f5dd5f704d5cb6af525f36d86da9fe9755dbcfff33081fce20b9e803.nix;
        revNum = 0;
        sha256 = "9cfa1f35f5dd5f704d5cb6af525f36d86da9fe9755dbcfff33081fce20b9e803";
      };
      default = "r0";
    };
  };
}