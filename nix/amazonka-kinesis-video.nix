{
  "1.6.0" = {
    sha256 = "9604b4003c28635576ee560244e53e2f90b68cc2dd784bdf0a9e3173ea5c3635";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-kinesis-video-1.6.0-r0-1f8075ddae4dde49f172c9b7c2dcaf25693e79c6958e65f373b9e9d6d88206f0.nix;
        revNum = 0;
        sha256 = "1f8075ddae4dde49f172c9b7c2dcaf25693e79c6958e65f373b9e9d6d88206f0";
      };
      r1 = {
        nix = import ../hackage/amazonka-kinesis-video-1.6.0-r1-45a2c6960e6917c714d53f2c30b64ea567d4caba2c99d8a692d79c1404d2b98a.nix;
        revNum = 1;
        sha256 = "45a2c6960e6917c714d53f2c30b64ea567d4caba2c99d8a692d79c1404d2b98a";
      };
      default = "r1";
    };
  };
  "1.6.1" = {
    sha256 = "bbc7729c2651b995cd5fc1d55c1c829c9bfd8870f1e7f10eecf3991e3296698b";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-kinesis-video-1.6.1-r0-be2e2805005d11613e7006152fad803f2c47ea4b06938fc209bb4797582794f8.nix;
        revNum = 0;
        sha256 = "be2e2805005d11613e7006152fad803f2c47ea4b06938fc209bb4797582794f8";
      };
      r1 = {
        nix = import ../hackage/amazonka-kinesis-video-1.6.1-r1-40cf77a75e9b5fb5e2b34be51e7a58e099486fefa4899d0d1656a493d3fc5ba0.nix;
        revNum = 1;
        sha256 = "40cf77a75e9b5fb5e2b34be51e7a58e099486fefa4899d0d1656a493d3fc5ba0";
      };
      default = "r1";
    };
  };
  "2.0" = {
    sha256 = "541ae7fea66e336bea60713a9448998eddcd49fcc7fe20f0822c3316de0e5d32";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-kinesis-video-2.0-r0-b326295c304f662c9edd78597987b78d492c70ea64d235b80f456c854ab93002.nix;
        revNum = 0;
        sha256 = "b326295c304f662c9edd78597987b78d492c70ea64d235b80f456c854ab93002";
      };
      r1 = {
        nix = import ../hackage/amazonka-kinesis-video-2.0-r1-3f4834f92929cfd4247032c55a4ac3aac7dbade700a156edf57249809603fdc3.nix;
        revNum = 1;
        sha256 = "3f4834f92929cfd4247032c55a4ac3aac7dbade700a156edf57249809603fdc3";
      };
      default = "r1";
    };
  };
}