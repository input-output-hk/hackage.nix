{
  "0.1.0" = {
    sha256 = "ffb66a4bee5432799e75f4c637856ae49868b2633e3711b3468a8d78b9263ef2";
    revisions = {
      r0 = {
        nix = import ../hackage/arch-web-0.1.0-r0-22f28275dbe03287571b31f06fa06f396f99de8b323c5c10665c4f4599bdc6b3.nix;
        revNum = 0;
        sha256 = "22f28275dbe03287571b31f06fa06f396f99de8b323c5c10665c4f4599bdc6b3";
      };
      r1 = {
        nix = import ../hackage/arch-web-0.1.0-r1-2977dc3671839382e3f59f7b697ebf6635d8b177c2b9430407168505fcb3d53c.nix;
        revNum = 1;
        sha256 = "2977dc3671839382e3f59f7b697ebf6635d8b177c2b9430407168505fcb3d53c";
      };
      default = "r1";
    };
  };
  "0.1.1" = {
    sha256 = "0d786f2f6da1f9b64e3c82838546152faf9c01f351cbb13b2bbb7f785a0d9de2";
    revisions = {
      r0 = {
        nix = import ../hackage/arch-web-0.1.1-r0-aefd76385c7c8440533e66cf352c063f9bf6d8e13e583024b1bc6951879743ed.nix;
        revNum = 0;
        sha256 = "aefd76385c7c8440533e66cf352c063f9bf6d8e13e583024b1bc6951879743ed";
      };
      r1 = {
        nix = import ../hackage/arch-web-0.1.1-r1-7309ecb70667b37006ee02f40ca9409a8c17f45e7b77ae4dc2e6a1dff3b6828c.nix;
        revNum = 1;
        sha256 = "7309ecb70667b37006ee02f40ca9409a8c17f45e7b77ae4dc2e6a1dff3b6828c";
      };
      default = "r1";
    };
  };
  "0.2" = {
    sha256 = "37f3aaa6708772c4795e8e2766dea8ea151cefade89b8e81a1013e798559be2b";
    revisions = {
      r0 = {
        nix = import ../hackage/arch-web-0.2-r0-dcf4c24feb30e226263c9d263057a05647c13c5451bea693171e3b74c9c92c04.nix;
        revNum = 0;
        sha256 = "dcf4c24feb30e226263c9d263057a05647c13c5451bea693171e3b74c9c92c04";
      };
      r1 = {
        nix = import ../hackage/arch-web-0.2-r1-77f89cebaf03ac66cbb8e07aad4d46fdef733ee6d157955fbc5e893a38ea55d7.nix;
        revNum = 1;
        sha256 = "77f89cebaf03ac66cbb8e07aad4d46fdef733ee6d157955fbc5e893a38ea55d7";
      };
      default = "r1";
    };
  };
}