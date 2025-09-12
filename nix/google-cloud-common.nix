{
  "0.1.0.0" = {
    sha256 = "6bda7e719edb381f3d00ce5d2dc2ed09bf8cd0c7f207251421d7d20a9a748f24";
    revisions = {
      r0 = {
        nix = import ../hackage/google-cloud-common-0.1.0.0-r0-15d4780ffb57574c1972048adc8f07113e80f470a4849a0257f803af92383501.nix;
        revNum = 0;
        sha256 = "15d4780ffb57574c1972048adc8f07113e80f470a4849a0257f803af92383501";
      };
      default = "r0";
    };
  };
  "1.1.0.0" = {
    sha256 = "80b9adf1f9af9e3b21ba02629b609b503801949393d9c1497fa44f9c3da9e30d";
    revisions = {
      r0 = {
        nix = import ../hackage/google-cloud-common-1.1.0.0-r0-746edb119319b99f2252be2f9262955424f2ed18855cc0b06f119cbd26ad8c44.nix;
        revNum = 0;
        sha256 = "746edb119319b99f2252be2f9262955424f2ed18855cc0b06f119cbd26ad8c44";
      };
      default = "r0";
    };
  };
}