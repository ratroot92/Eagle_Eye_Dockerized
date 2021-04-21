# chat/routing.py
from django.urls import re_path
from .consumers import Top_Trends,Top_Trends_By_Location

websocket_urlpatterns = [
    # routes defined in tweets_targets.html

    re_path(r'ws/topTrends/', Top_Trends),
    re_path(r'ws/scheduleUpdate/', Top_Trends_By_Location),

   
]