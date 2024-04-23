{
  "0.1.0.0" = {
    sha256 = "3eab2ff83f8714d7489be1e8734cb843847437cf7cbb8b4b0f1acf910eca8a0c";
    revisions = {
      r0 = {
        nix = import ../hackage/compact-0.1.0.0-r0-ed43b1a43308c330168d881cf665307eddef2fa072fe8d01a8efe99076f5c71b.nix;
        revNum = 0;
        sha256 = "ed43b1a43308c330168d881cf665307eddef2fa072fe8d01a8efe99076f5c71b";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "ee8533e16b94bbbf3519ccad26f3e569d60d33a5a9d2e3636e0764aff7b2d653";
    revisions = {
      r0 = {
        nix = import ../hackage/compact-0.1.0.1-r0-4e981f44c237d9c555fc3715bbc0c0dbc8ddf32beed4e5d9a602ceef777dc935.nix;
        revNum = 0;
        sha256 = "4e981f44c237d9c555fc3715bbc0c0dbc8ddf32beed4e5d9a602ceef777dc935";
      };
      r1 = {
        nix = import ../hackage/compact-0.1.0.1-r1-37d886eaf02964c57dd00002e355320482ec26eccd77641e0cf98dfe8c10b72d.nix;
        revNum = 1;
        sha256 = "37d886eaf02964c57dd00002e355320482ec26eccd77641e0cf98dfe8c10b72d";
      };
      r2 = {
        nix = import ../hackage/compact-0.1.0.1-r2-a74976cfdb16a76ca006b58f2a952d604e3244b404e0458a1ec1c255d7d7c8eb.nix;
        revNum = 2;
        sha256 = "a74976cfdb16a76ca006b58f2a952d604e3244b404e0458a1ec1c255d7d7c8eb";
      };
      default = "r2";
    };
  };
  "0.2.0.0" = {
    sha256 = "03a6b534f4f8f06fe1f3921be74f90c2fab9da7f28e7520612c91c28da266277";
    revisions = {
      r0 = {
        nix = import ../hackage/compact-0.2.0.0-r0-9c5785bdc178ea6cf8f514ad35a78c64220e3cdb22216534e4cf496765551c7e.nix;
        revNum = 0;
        sha256 = "9c5785bdc178ea6cf8f514ad35a78c64220e3cdb22216534e4cf496765551c7e";
      };
      r1 = {
        nix = import ../hackage/compact-0.2.0.0-r1-75ef98cb51201b4a0d6de95cbbb62be6237c092a3d594737346c70c5d56c2380.nix;
        revNum = 1;
        sha256 = "75ef98cb51201b4a0d6de95cbbb62be6237c092a3d594737346c70c5d56c2380";
      };
      r2 = {
        nix = import ../hackage/compact-0.2.0.0-r2-aa05cd5349f231a42e0b43259015cde3921b609917b695aed15aac44a7f468f4.nix;
        revNum = 2;
        sha256 = "aa05cd5349f231a42e0b43259015cde3921b609917b695aed15aac44a7f468f4";
      };
      default = "r2";
    };
  };
}