{
  "0.3" = {
    sha256 = "82438a8a3169d8ba350d80abf9b3caed458c1e6d6669a3e93208504404bb9d2a";
    revisions = {
      r0 = {
        nix = import ../hackage/collections-0.3-r0-dd355dc9b398f48779d79305acf4c076373cb024a59c1c7af936fab75601880c.nix;
        revNum = 0;
        sha256 = "dd355dc9b398f48779d79305acf4c076373cb024a59c1c7af936fab75601880c";
      };
      r1 = {
        nix = import ../hackage/collections-0.3-r1-d52e30472461d0ad554d602294a9fbed22cf048b651373d87ee39e068b69e979.nix;
        revNum = 1;
        sha256 = "d52e30472461d0ad554d602294a9fbed22cf048b651373d87ee39e068b69e979";
      };
      default = "r1";
    };
  };
  "0.3.1" = {
    sha256 = "1d26478e722e2a4dbd6b3e02083020687cb4107bbb186f26f8b1fffc4ea2b1e3";
    revisions = {
      r0 = {
        nix = import ../hackage/collections-0.3.1-r0-ed34a557cbd31bd6a34e21d2d90d171b1518f9f70a601bf1030fa71659da4a6a.nix;
        revNum = 0;
        sha256 = "ed34a557cbd31bd6a34e21d2d90d171b1518f9f70a601bf1030fa71659da4a6a";
      };
      default = "r0";
    };
  };
  "0.3.1.1" = {
    sha256 = "ef3075c5034bf45bafa6c3a1ffda219c25377094c06dd1dc235b722926aab328";
    revisions = {
      r0 = {
        nix = import ../hackage/collections-0.3.1.1-r0-d374eb02fc2cd5be45833d97048e40e03286070c435a494384d2364eec68c2ea.nix;
        revNum = 0;
        sha256 = "d374eb02fc2cd5be45833d97048e40e03286070c435a494384d2364eec68c2ea";
      };
      default = "r0";
    };
  };
}