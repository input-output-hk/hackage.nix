{
  "0.0.0.0" = {
    sha256 = "2950cfab35cd6c88ee3cfac18b3da3cbf7bbbb7bed4149a133630472a81cee56";
    revisions = {
      r0 = {
        nix = import ../hackage/hs-opentelemetry-propagator-datadog-0.0.0.0-r0-2a35a6505460dd4d972ff4d58520c8ea2eacd410c262927849076374e3266571.nix;
        revNum = 0;
        sha256 = "2a35a6505460dd4d972ff4d58520c8ea2eacd410c262927849076374e3266571";
      };
      r1 = {
        nix = import ../hackage/hs-opentelemetry-propagator-datadog-0.0.0.0-r1-dabfc321773b95b58a6985332eb2b510c227369b6903f8ade4d702ecab63db2d.nix;
        revNum = 1;
        sha256 = "dabfc321773b95b58a6985332eb2b510c227369b6903f8ade4d702ecab63db2d";
      };
      default = "r1";
    };
  };
  "0.0.1.0" = {
    sha256 = "f64cdeb6e8ca7241594dda19462ae44f8ce8c590c73420bdb68b385eb966ae6b";
    revisions = {
      r0 = {
        nix = import ../hackage/hs-opentelemetry-propagator-datadog-0.0.1.0-r0-c85de95e3c33b3ffcf980f560166e960cab0888e0741315f487288b3653c007c.nix;
        revNum = 0;
        sha256 = "c85de95e3c33b3ffcf980f560166e960cab0888e0741315f487288b3653c007c";
      };
      default = "r0";
    };
  };
}