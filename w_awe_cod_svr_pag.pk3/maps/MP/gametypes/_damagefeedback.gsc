init()
{
	precacheShader("damage_feedback");

	level thread onPlayerConnect();
}

onPlayerConnect()
{
	for(;;)
	{
		level waittill("connecting", player);

		player.hud_damagefeedback = newClientHudElem(player);
		player.hud_damagefeedback.horzAlign = "center";
		player.hud_damagefeedback.vertAlign = "middle";
		player.hud_damagefeedback.x = -12;
		player.hud_damagefeedback.y = -12;
		player.hud_damagefeedback.alpha = 0;
		player.hud_damagefeedback.archived = true;
		player.hud_damagefeedback setShader("damage_feedback", 24, 24);
	}
}

updateDamageFeedback()
{
	if(isPlayer(self))
	{
		self.hud_damagefeedback.alpha = 1;
		self.hud_damagefeedback fadeOverTime(1);
		self.hud_damagefeedback.alpha = 0;
		self playlocalsound("MP_hit_alert");
	}
}

headshotsound()
{
	if(isPlayer(self))
	{
		self playsound("headshot");
	}
}

humiliationsound()
{
	if(isPlayer(self))
	{
		self playsound("humiliation");
	}
}

brutalitysound()
{
	if(isPlayer(self))
	{
		self playsound("brutality");
	}
}

startsound()
{
	if(isPlayer(self))
	{
		self playsound("start");
	}
}

fatalitysound()
{
	if(isPlayer(self))
	{
		self playsound("fatality");
	}
}

killingspreesound()
{
	if(isPlayer(self))
	{
		self playsound("killingspree");
	}
}

holyshitsound()
{
	if(isPlayer(self))
	{
		self playsound("holyshit");
	}
}

wickedsicksound()
{
	if(isPlayer(self))
	{
		self playsound("wickedsick");
	}
}

godlikesound()
{
	if(isPlayer(self))
	{
		self playsound("godlike");
	}
}

unstoppablesound()
{
	if(isPlayer(self))
	{
		self playsound("unstoppable");
	}
}

rampagesound()
{
	if(isPlayer(self))
	{
		self playsound("rampage");
	}
}

dominatingsound()
{
	if(isPlayer(self))
	{
		self playsound("dominating");
	}
}

hallelujah()
{
  if(isplayer(self))
  {
  	self playsound("hallelujah");
  	}
 }
 
enditsound()
{
  if(isPlayer(self))
  {
	self playsound("endit");
	}
}

dohsound()
{
  if(isPlayer(self))
  {
	self playsound("doh");
	}
}

killspree_endsound()
{
  if(isPlayer(self))
  {
	self playsound("killspree_end");
	}
}

slaughtersound()
{
  if(isPlayer(self))
  {
	self playsound("slaughter");
	}
}