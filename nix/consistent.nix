{
  "0.0.1" = {
    sha256 = "a57d5872c68de93d5f2cf9aaa45c091559ed3877d26eab2b025fae6a60b57b00";
    revisions = {
      r0 = {
        nix = import ../hackage/consistent-0.0.1-r0-81c4aecedfb49237b12627377bc26e49e5893a08644d3d34f2e8c2c92d632272.nix;
        revNum = 0;
        sha256 = "81c4aecedfb49237b12627377bc26e49e5893a08644d3d34f2e8c2c92d632272";
      };
      default = "r0";
    };
  };
  "0.1.0" = {
    sha256 = "f8d983c3c3bc4f0928681c98dac459c18d4dbe64c575d260ac4576e8866a0833";
    revisions = {
      r0 = {
        nix = import ../hackage/consistent-0.1.0-r0-c5199a88c8e993f2e27826303564549dc741a805231c152ba3cdda8a8620c7db.nix;
        revNum = 0;
        sha256 = "c5199a88c8e993f2e27826303564549dc741a805231c152ba3cdda8a8620c7db";
      };
      default = "r0";
    };
  };
}