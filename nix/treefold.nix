{
  "0.1.0.0" = {
    sha256 = "ef345c12d4c110591717b589e59b53b126ea2855adb15ac49d65c8c3775e77eb";
    revisions = {
      r0 = {
        nix = import ../hackage/treefold-0.1.0.0-r0-b358cdfabc8c6d26ec8f50d72d35486be78288d0a5160fd75180f9ad118ef7ec.nix;
        revNum = 0;
        sha256 = "b358cdfabc8c6d26ec8f50d72d35486be78288d0a5160fd75180f9ad118ef7ec";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "45c38dc870b865fcf78cf418dec84a4c6c85072852c27518d848dacfd20dfd4f";
    revisions = {
      r0 = {
        nix = import ../hackage/treefold-0.2.0.0-r0-4d1ee86ec753ea330578ae9fabdf42629abb6d816ebd87606104f9641ed9cdbe.nix;
        revNum = 0;
        sha256 = "4d1ee86ec753ea330578ae9fabdf42629abb6d816ebd87606104f9641ed9cdbe";
      };
      default = "r0";
    };
  };
}