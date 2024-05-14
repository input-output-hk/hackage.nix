{
  "2.0" = {
    sha256 = "bd8ecbbca748f81153bbce327fceeb79cd414da4d35776acaf93358d6a2dd08e";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-cloudcontrol-2.0-r0-18fa04f713d34a0f5be2156bd01b9b504344771368dbf7c3180e54c89cfa4b1b.nix;
        revNum = 0;
        sha256 = "18fa04f713d34a0f5be2156bd01b9b504344771368dbf7c3180e54c89cfa4b1b";
      };
      r1 = {
        nix = import ../hackage/amazonka-cloudcontrol-2.0-r1-243f8928fa8347e07aea6c9a0a78227cd2c8c96b3a616b9b45380ae8299fe52e.nix;
        revNum = 1;
        sha256 = "243f8928fa8347e07aea6c9a0a78227cd2c8c96b3a616b9b45380ae8299fe52e";
      };
      default = "r1";
    };
  };
}