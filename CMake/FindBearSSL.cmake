#***************************************************************************
#                                  _   _ ____  _
#  Project                     ___| | | |  _ \| |
#                             / __| | | | |_) | |
#                            | (__| |_| |  _ <| |___
#                             \___|\___/|_| \_\_____|
#
# Copyright (C) 1998 - 2020, Daniel Stenberg, <daniel@haxx.se>, et al.
#
# This software is licensed as described in the file COPYING, which
# you should have received as part of this distribution. The terms
# are also available at https://curl.se/docs/copyright.html.
#
# You may opt to use, copy, modify, merge, publish, distribute and/or sell
# copies of the Software, and permit persons to whom the Software is
# furnished to do so, under the terms of the COPYING file.
#
# This software is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY
# KIND, either express or implied.
#
###########################################################################
find_path(BEARSSL_INCLUDE_DIRS NAMES iwnet/bearssl.h PATH_SUFFIXES ejdb2)
find_library(BEARSSL_LIBRARY NAMES libiwnet-1.a)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(BearSSL DEFAULT_MSG
    BEARSSL_INCLUDE_DIRS BEARSSL_LIBRARY)

mark_as_advanced(BEARSSL_INCLUDE_DIRS BEARSSL_LIBRARY)
