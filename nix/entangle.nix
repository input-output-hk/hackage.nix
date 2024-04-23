{
  "0.1.0" = {
    sha256 = "f3cd61ba0677f2eb45174a60de5146d7d8798e5e048d22763e215fa4f6c5aa41";
    revisions = {
      r0 = {
        nix = import ../hackage/entangle-0.1.0-r0-5a298994fdc943e5614621d6e5f136b5be74cc36e56ab8230cf257f5bd5d858a.nix;
        revNum = 0;
        sha256 = "5a298994fdc943e5614621d6e5f136b5be74cc36e56ab8230cf257f5bd5d858a";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "2836f6645c71d68ad1fcc30b0f3186bc9cf85f0703f3c89da58564cd05eedabc";
    revisions = {
      r0 = {
        nix = import ../hackage/entangle-0.1.1-r0-5d23f9a8472911bf859084e04999ccef13561b723d6df6a608abd995fb5d8cac.nix;
        revNum = 0;
        sha256 = "5d23f9a8472911bf859084e04999ccef13561b723d6df6a608abd995fb5d8cac";
      };
      default = "r0";
    };
  };
}