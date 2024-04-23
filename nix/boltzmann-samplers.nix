{
  "0.1.0.0" = {
    sha256 = "5707065a83cb30223ffedbd740ac07d3d879bb0895ba7666d23d659e3b69883f";
    revisions = {
      r0 = {
        nix = import ../hackage/boltzmann-samplers-0.1.0.0-r0-c99254998d93340de05e5c35c8853d7fddbb8b5c568a0b336ae24a1faf6cf723.nix;
        revNum = 0;
        sha256 = "c99254998d93340de05e5c35c8853d7fddbb8b5c568a0b336ae24a1faf6cf723";
      };
      r1 = {
        nix = import ../hackage/boltzmann-samplers-0.1.0.0-r1-203beaed2fdb6bbbd42cfa264f9fe1ef2ba4a69f4c92a85864317ffdd43a6a03.nix;
        revNum = 1;
        sha256 = "203beaed2fdb6bbbd42cfa264f9fe1ef2ba4a69f4c92a85864317ffdd43a6a03";
      };
      r2 = {
        nix = import ../hackage/boltzmann-samplers-0.1.0.0-r2-466042c7dbca14ea86fce5cd7dcd270ba0349b6006d07973eb39f79bbcefb256.nix;
        revNum = 2;
        sha256 = "466042c7dbca14ea86fce5cd7dcd270ba0349b6006d07973eb39f79bbcefb256";
      };
      default = "r2";
    };
  };
  "0.1.1.0" = {
    sha256 = "de7c3e1f77b0ae27c78cb53e539dbaa8dc2f6e3f3605c25f1611545806ad878e";
    revisions = {
      r0 = {
        nix = import ../hackage/boltzmann-samplers-0.1.1.0-r0-d4a5ee732777aec9355e20720dec3d95aea3987763f36cb9b5673fe78ba74228.nix;
        revNum = 0;
        sha256 = "d4a5ee732777aec9355e20720dec3d95aea3987763f36cb9b5673fe78ba74228";
      };
      default = "r0";
    };
  };
}