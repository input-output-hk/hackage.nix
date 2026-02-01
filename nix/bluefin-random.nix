{
  "0.0.16.0" = {
    sha256 = "ef19efa6e696cada3527b760bbb31003e2aaeb8b0e7806742ed7bf8a25183e0a";
    revisions = {
      r0 = {
        nix = import ../hackage/bluefin-random-0.0.16.0-r0-4a03abd6d1783f27a4737a208d21b71ecf44e8e96f9be96ecf2ac4e37dc744df.nix;
        revNum = 0;
        sha256 = "4a03abd6d1783f27a4737a208d21b71ecf44e8e96f9be96ecf2ac4e37dc744df";
      };
      default = "r0";
    };
  };
  "0.0.16.1" = {
    sha256 = "8a08d9720c34f8bc8b76717f2801c278b8b38a459d83a92ff8a4e3cef3eb05ce";
    revisions = {
      r0 = {
        nix = import ../hackage/bluefin-random-0.0.16.1-r0-9f49a0cc42c5fa054293a6f513b1bbd874ceb8e7c28e25aefcf5c60afcfa48c5.nix;
        revNum = 0;
        sha256 = "9f49a0cc42c5fa054293a6f513b1bbd874ceb8e7c28e25aefcf5c60afcfa48c5";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "ce57875af0bc3f9806bd78a3eb759d6e1644452c27e22a4907fbb647d06770cf";
    revisions = {
      r0 = {
        nix = import ../hackage/bluefin-random-0.2.0.0-r0-029204a6bafa57ac4eb58974ef231d3305cc266b34e8491db29eb7ad51b6fcbb.nix;
        revNum = 0;
        sha256 = "029204a6bafa57ac4eb58974ef231d3305cc266b34e8491db29eb7ad51b6fcbb";
      };
      r1 = {
        nix = import ../hackage/bluefin-random-0.2.0.0-r1-035a19d34260aa367c2387f88e0638fb4517cdee0e4994b124f5ce923b5cb7a0.nix;
        revNum = 1;
        sha256 = "035a19d34260aa367c2387f88e0638fb4517cdee0e4994b124f5ce923b5cb7a0";
      };
      r2 = {
        nix = import ../hackage/bluefin-random-0.2.0.0-r2-e7b506de0cdc4952f126beddbd1cad64b09e5c0118684ce43d3891e1546a202c.nix;
        revNum = 2;
        sha256 = "e7b506de0cdc4952f126beddbd1cad64b09e5c0118684ce43d3891e1546a202c";
      };
      default = "r2";
    };
  };
}