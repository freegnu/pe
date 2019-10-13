from __future__ import print_function
import datetime

class PE19:
  def __init__(self, anchordate, anchorweekday, firstdate, lastdate, weekday, dayofmonth):
    self.anchordate = anchordate
    self.anchorweekday = anchorweekday
    self.firstdate = firstdate
    self.lastdate = lastdate
    self.weekday = weekday
    self.dayofmonth = dayofmonth
  @property
  def fromanchor(self):
    return (self.firstdate - self.anchordate)
  @property
  def daysfromanchor(self):
    return self.fromanchor.days
  @property
  def total(self):
    return ((self.lastdate - self.firstdate) + datetime.timedelta(days=1))
  @property
  def daystotal(self):
    return self.total.days
  @property
  def matching(self):
    return [i for i in (self.firstdate + datetime.timedelta(days=j) for j in range(self.daystotal)) if i.weekday() == 6 and i.day == 1]
  @property
  def daysmatching(self):
    return len(self.matching)

anchordate = datetime.date(1900, 1, 1)
anchorweekday = 0 # Monday
firstdate = datetime.date(1901, 1, 1)
lastdate = datetime.date(2000, 12, 31)
weekday = 6
dayofmonth = 1
pe19 = PE19(anchordate, anchorweekday, firstdate, lastdate, weekday, dayofmonth)
print(pe19.daysmatching)
