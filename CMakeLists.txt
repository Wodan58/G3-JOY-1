#
#   module  : CMakeLists.txt
#   version : 1.4
#   date    : 09/23/24
#
if(RUN_PACK MATCHES "ON")
  set(JOY_G3 accpost.joy accread.joy acctest.joy amount.joy balview.joy
      datefn.joy datein.joy editch.joy editln.joy filter.joy findacc.joy
      formin.joy functn.joy getkey.joy header.joy jrnpost.joy jrnread.joy
      jrntest.joy leap.joy limits.joy longin.joy menuin.joy nextseq.joy
      number.joy paging.joy palview.joy prcpost.joy prcread.joy prctest.joy
      readrec.joy screen.joy stdpost.joy stdread.joy stdtest.joy string.joy
      summer.joy textin.joy txtpost.joy txtread.joy wordin.joy yearend.joy
      # The LICENSE is used in the NSIS installer.
      G3.bat G3.url LICENSE)
  install(FILES ${JOY_G3} DESTINATION G3)
  install(FILES lang/langNL.joy lang/langEN.joy DESTINATION G3/lang)
endif()
