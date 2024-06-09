{
  "0.3" = {
    sha256 = "f828679a0c5b51169b89db6b164b8a32ab7cf25c0c9e1ceb006ec7eaf2b90844";
    revisions = {
      r0 = {
        nix = import ../hackage/vec-lens-0.3-r0-deab73a1ccecc80b177ee46f71f65a7fce018ebdc2af5e495151cf6b5e49d16d.nix;
        revNum = 0;
        sha256 = "deab73a1ccecc80b177ee46f71f65a7fce018ebdc2af5e495151cf6b5e49d16d";
      };
      r1 = {
        nix = import ../hackage/vec-lens-0.3-r1-f002e57f921e87da2add5e849654ae56f2723231441c6300ff4bbeb3960a323f.nix;
        revNum = 1;
        sha256 = "f002e57f921e87da2add5e849654ae56f2723231441c6300ff4bbeb3960a323f";
      };
      default = "r1";
    };
  };
  "0.4" = {
    sha256 = "f02c4753b299ff7ba60ddb6c01df65f7b1c2fd26c8de9877a38ba3651e475be2";
    revisions = {
      r0 = {
        nix = import ../hackage/vec-lens-0.4-r0-2af5797fdd3777bf1da22ea8264e8269f76882f6321d822cd38bae301f8647b7.nix;
        revNum = 0;
        sha256 = "2af5797fdd3777bf1da22ea8264e8269f76882f6321d822cd38bae301f8647b7";
      };
      r1 = {
        nix = import ../hackage/vec-lens-0.4-r1-a32ae456c2b6f8f04f7610a959a349f83688708bf1995ddd098da1b18254089c.nix;
        revNum = 1;
        sha256 = "a32ae456c2b6f8f04f7610a959a349f83688708bf1995ddd098da1b18254089c";
      };
      r2 = {
        nix = import ../hackage/vec-lens-0.4-r2-15f79cd7f0c4d8736b6a376c3052f756d523a2db793f515fcdacec749dbe7c42.nix;
        revNum = 2;
        sha256 = "15f79cd7f0c4d8736b6a376c3052f756d523a2db793f515fcdacec749dbe7c42";
      };
      r3 = {
        nix = import ../hackage/vec-lens-0.4-r3-2ef0e9f033fabc418751c1cfc1e5681d68966be09ca22d70881cc32f5a38cc42.nix;
        revNum = 3;
        sha256 = "2ef0e9f033fabc418751c1cfc1e5681d68966be09ca22d70881cc32f5a38cc42";
      };
      r4 = {
        nix = import ../hackage/vec-lens-0.4-r4-9a6121a08ce0f94f6dee1cc4c2b42cecb266a77fef626c8a39bcb3edb8e609d6.nix;
        revNum = 4;
        sha256 = "9a6121a08ce0f94f6dee1cc4c2b42cecb266a77fef626c8a39bcb3edb8e609d6";
      };
      default = "r4";
    };
  };
  "0.4.1" = {
    sha256 = "7ca7e74e95f06f4aef35f7e35c5c05278f7eb8a0ad7063fcab7e362ce6ba97d2";
    revisions = {
      r0 = {
        nix = import ../hackage/vec-lens-0.4.1-r0-9bd46cbc0f04ecb84b57c36506e63bd9ed42427da6f2563cc0087f3b9d95dfca.nix;
        revNum = 0;
        sha256 = "9bd46cbc0f04ecb84b57c36506e63bd9ed42427da6f2563cc0087f3b9d95dfca";
      };
      default = "r0";
    };
  };
}