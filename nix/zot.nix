{
  "0.0.1" = {
    sha256 = "0f209e89d7e5950a3b9a85e7d77aba15c59bb4ec8e2b71bddefa84b377215f4b";
    revisions = {
      r0 = {
        nix = import ../hackage/zot-0.0.1-r0-5b7cb07b92ddfb95419691efcff0623c427a15cb805b96b7a2a35f5b2e8a836d.nix;
        revNum = 0;
        sha256 = "5b7cb07b92ddfb95419691efcff0623c427a15cb805b96b7a2a35f5b2e8a836d";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "03b7086b3a1d4ab4bed9a1781ee7bb59796448f75c3e3b8d7fc02fb8699e8f8b";
    revisions = {
      r0 = {
        nix = import ../hackage/zot-0.0.2-r0-3e36f65a512814b3d1b53ae437f6505bb1949bdee8acdc8bb1ab9756c062abea.nix;
        revNum = 0;
        sha256 = "3e36f65a512814b3d1b53ae437f6505bb1949bdee8acdc8bb1ab9756c062abea";
      };
      r1 = {
        nix = import ../hackage/zot-0.0.2-r1-325ccedb3426935b4a56f838f3d05fc914b72729a2b80d6c804bec5657593a40.nix;
        revNum = 1;
        sha256 = "325ccedb3426935b4a56f838f3d05fc914b72729a2b80d6c804bec5657593a40";
      };
      default = "r1";
    };
  };
  "0.0.3" = {
    sha256 = "c8a9091b939e3f74aca6be3007a0066c8a1de69da4b62e22891bed543f8a2b32";
    revisions = {
      r0 = {
        nix = import ../hackage/zot-0.0.3-r0-c4d86c601d0ea08ea33952f192484dbb284aa269a8233a2e328b4d9e0fb43ea3.nix;
        revNum = 0;
        sha256 = "c4d86c601d0ea08ea33952f192484dbb284aa269a8233a2e328b4d9e0fb43ea3";
      };
      r1 = {
        nix = import ../hackage/zot-0.0.3-r1-b543a28082a9568e793d33c7ba5364fa3bdadb09323ce3c293f2f2ed8c5efa11.nix;
        revNum = 1;
        sha256 = "b543a28082a9568e793d33c7ba5364fa3bdadb09323ce3c293f2f2ed8c5efa11";
      };
      r2 = {
        nix = import ../hackage/zot-0.0.3-r2-7498e9ac0901bb4a89814bae9ba45ce257e67d39c572889a5cdc9c7cb381dced.nix;
        revNum = 2;
        sha256 = "7498e9ac0901bb4a89814bae9ba45ce257e67d39c572889a5cdc9c7cb381dced";
      };
      default = "r2";
    };
  };
}