{
  "2.0" = {
    sha256 = "d209957c186823ecdfba8fe8723097b7e39917483270b497ec0dd25bf208590a";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-mwaa-2.0-r0-84ceadedec556a07863b6c91167ee587af7bf963f5c16a6539d333a2a484fbe2.nix;
        revNum = 0;
        sha256 = "84ceadedec556a07863b6c91167ee587af7bf963f5c16a6539d333a2a484fbe2";
      };
      r1 = {
        nix = import ../hackage/amazonka-mwaa-2.0-r1-530836e761596e528529830aca1ed18ae271eb3892189f48e7f2a6aa59683727.nix;
        revNum = 1;
        sha256 = "530836e761596e528529830aca1ed18ae271eb3892189f48e7f2a6aa59683727";
      };
      default = "r1";
    };
  };
}