{
  "0.1.0" = {
    sha256 = "4aafbf6d583fd5641da9dcc06754953c6a86ac36a9c0fa73e3b9188f02bad4f3";
    revisions = {
      r0 = {
        nix = import ../hackage/termbox-0.1.0-r0-369c63da02839d886cea15bc2c1ba27227e7887beef2da2315bd0531b44cac42.nix;
        revNum = 0;
        sha256 = "369c63da02839d886cea15bc2c1ba27227e7887beef2da2315bd0531b44cac42";
        };
      r1 = {
        nix = import ../hackage/termbox-0.1.0-r1-c553dab05771ef57653811a7287fc3966f13ee5ad7f86d597d68a5e6555a8a63.nix;
        revNum = 1;
        sha256 = "c553dab05771ef57653811a7287fc3966f13ee5ad7f86d597d68a5e6555a8a63";
        };
      default = "r1";
      };
    };
  "0.2.0" = {
    sha256 = "0fcb204e2ddfdac84add91f49b8e28da1502ef8671a02611d8d01a568ce4c113";
    revisions = {
      r0 = {
        nix = import ../hackage/termbox-0.2.0-r0-ad1d44681a8c9398f981694af47bf049aea4232f22bfba95ab29e31260dce9b3.nix;
        revNum = 0;
        sha256 = "ad1d44681a8c9398f981694af47bf049aea4232f22bfba95ab29e31260dce9b3";
        };
      default = "r0";
      };
    };
  "0.2.0.1" = {
    sha256 = "2837d5a0dc94415b92fb4b31c7a3b9550e89ceca65b3dc79b5bdeec06c841467";
    revisions = {
      r0 = {
        nix = import ../hackage/termbox-0.2.0.1-r0-c5f165b570025b03220d108a525d5658525309f542f4275f69478e5b78806811.nix;
        revNum = 0;
        sha256 = "c5f165b570025b03220d108a525d5658525309f542f4275f69478e5b78806811";
        };
      default = "r0";
      };
    };
  "0.3.0" = {
    sha256 = "504d2e54c6e48dc2e8f2350fa38d5bf481c3124e6cdb0b2dee866d4ebdd622ee";
    revisions = {
      r0 = {
        nix = import ../hackage/termbox-0.3.0-r0-8b4c2f10fffb9c73cd2c3a4c309e7d0eeb7d77e7c6b0e518d59c67a77f4af539.nix;
        revNum = 0;
        sha256 = "8b4c2f10fffb9c73cd2c3a4c309e7d0eeb7d77e7c6b0e518d59c67a77f4af539";
        };
      r1 = {
        nix = import ../hackage/termbox-0.3.0-r1-911ef3639e39f40572c516a356853725fbf8d712966c60b503fefec8bcd81ab4.nix;
        revNum = 1;
        sha256 = "911ef3639e39f40572c516a356853725fbf8d712966c60b503fefec8bcd81ab4";
        };
      default = "r1";
      };
    };
  "1.0.0" = {
    sha256 = "7a48f00141761f7439872bf25c5483911262373e384be6f3457c6f5255973836";
    revisions = {
      r0 = {
        nix = import ../hackage/termbox-1.0.0-r0-f025aee9923ab392f12fa648d1ef845f09698991f37d50684147a201269c6e98.nix;
        revNum = 0;
        sha256 = "f025aee9923ab392f12fa648d1ef845f09698991f37d50684147a201269c6e98";
        };
      default = "r0";
      };
    };
  }