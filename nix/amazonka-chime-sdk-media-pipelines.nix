{
  "2.0" = {
    sha256 = "4d0373ea683bb19e7cbfa16ebbf3f99fae4ae57156d4cebd469cdda5f244baac";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-chime-sdk-media-pipelines-2.0-r0-11339ac9cf7b930425f8e8b463de7568a4cb561e3b5668bbeac243906db66711.nix;
        revNum = 0;
        sha256 = "11339ac9cf7b930425f8e8b463de7568a4cb561e3b5668bbeac243906db66711";
      };
      r1 = {
        nix = import ../hackage/amazonka-chime-sdk-media-pipelines-2.0-r1-17021d8467132dd44977c26df24b7486895e73407a1d6bd7f7b8ca6b8b4a3ada.nix;
        revNum = 1;
        sha256 = "17021d8467132dd44977c26df24b7486895e73407a1d6bd7f7b8ca6b8b4a3ada";
      };
      default = "r1";
    };
  };
}