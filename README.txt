DateExport (git)

Allows you to export to a dated folder hierarchy.
For example:

    Destination: D:\photos
    Date format: %Y/%m/%d/%1I%p
    will output to: D:\photos\2010\05\24\04AM\DSC_2239.jpg

    Destination: S:\Somewhere
    Date format: %Y/%m - %b
    will output to: S:\Somewhere\2010\08 - Aug\DSC_1527.jpg

WARNING: THERE IS NO USER INPUT CHECKING.
         PLEASE BE CAREFUL WITH YOUR INPUT.

Note the use of /, I have no idea if \ will work as a path separator but since / 
works on windows anyway, I would stick with that.

You can select desired time source to use either the stored metadata for the time of
image taken or the time of export.
You can reset the "Do not show again" message prompt from the Lightroom Plug-in 
Manager window.

(Icon by Roy Duncan)


=========================
Available date formatting
=========================

%B:    Full name of month
%b:    3-letter name of month
%m:    2-digit month number
%d:    Day number with leading zero
%e:    Day number without leading zero
%j:    Julian day of the year with leading zero
%y:    2-digit year number
%Y:    4-digit year number
%H:    Hour with leading zero (24-hour clock)
%1H:   Hour without leading zero (24-hour clock)
%I:    Hour with leading zero (12-hour clock)
%1I:   Hour without leading zero (12-hour clock)
%M:    Minute with leading zero
%S:    Second with leading zero
%p:    AM/PM designation
%P:    AM/PM designation, same as %p, but causes white space trimming to be applied
    as the last formatting step.
%%:    % symbol


=========
CHANGELOG
=========

2012-04-05
    * Moved to github

2012-03-29      0.2
    * Added selectable time source (metadata/now)
    * Handled copy errors a little better

2011-02-06      0.1
    * Initial release
