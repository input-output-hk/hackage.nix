{
  "2.0" = {
    sha256 = "1fb427cf5b02311e5af46e2549dad626bd165b9c00b533b5fc20ee9cd5cb386d";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-voice-id-2.0-r0-618c0643233a9ec64aa2efad90ee19fcc3a9bd41df42753648969b2ff221f992.nix;
        revNum = 0;
        sha256 = "618c0643233a9ec64aa2efad90ee19fcc3a9bd41df42753648969b2ff221f992";
      };
      r1 = {
        nix = import ../hackage/amazonka-voice-id-2.0-r1-53e071db1f393a905b9cdef907364374cf7522f1b73aeb2556b56aa61659b50a.nix;
        revNum = 1;
        sha256 = "53e071db1f393a905b9cdef907364374cf7522f1b73aeb2556b56aa61659b50a";
      };
      default = "r1";
    };
  };
}