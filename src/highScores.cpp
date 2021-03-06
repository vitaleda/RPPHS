#include"highScores.h"

void HighScores::init()
{
  status = 1;

  menuRect.x = 966 / 2 - 355 / 2;
  menuRect.y = -300;
  menuRect.w = 355;
  menuRect.h = 300;

  target = -300;
  fade = 0;

  crossNeedsReset = true;
  goToMenu = false;
  barFade = 0;
}

void HighScores::start()
{
  target = 0;
  fade = 0;

  crossNeedsReset = true;
  goToMenu = false;

  barFade = 0;
}

void HighScores::doStuff(bool keys[15], bool showBattery, int scores_int[10], std::string scores_str[10], int newScore)
{
  vita2d_draw_texture_scale(gameBackground, 0, 0, 2, 2);

  vita2d_draw_rectangle(menuRect.x, menuRect.y, menuRect.w, menuRect.h, RGBA8(menuBGColorR,menuBGColorG,menuBGColorB, fade));
  drawEmptyRect(menuRect, RGBA8(menuBorderR,menuBorderG,menuBorderB,fade));

  vita2d_font_draw_text(font, menuRect.x + menuRect.w / 3 - vita2d_font_text_width(font, 20.0f, scores_str[0].c_str()) / 2, menuRect.y + 30, RGBA8(mainTextR,mainTextG,mainTextB,255), 20.0f, "HighScores:");
  int tempIndex = 60 ;
  for(int i = 0; i < 10; i++)
  {
    vita2d_font_draw_textf(font, menuRect.x + menuRect.w / 3 - vita2d_font_text_width(font, 20.0f, scores_str[0].c_str()) / 2, menuRect.y  + tempIndex, RGBA8(mainTextR,mainTextG,mainTextB,255), 20.0f,"%s %d", scores_str[i].c_str(), scores_int[i]);
    if(newScore == scores_int[i])
    {
      vita2d_font_draw_text(font, menuRect.x + menuRect.w / 3 - vita2d_font_text_width(font, 20.0f, scores_str[0].c_str()) / 2 - 15, menuRect.y  + tempIndex, RGBA8(mainTextR,mainTextG,mainTextB,255), 20.0f,">");
    }
    tempIndex += 20;
  }
  if(barFade < 255)
    barFade += 5;
  if(barFade >= 255)
    barFade = 0;

  vita2d_font_draw_text(font, menuRect.x + menuRect.w - vita2d_font_text_width(font, 20.0f, "Return") - 45, menuRect.y + menuRect.h - 16, RGBA8(helpTextR,helpTextG, helpTextB, 255), 20.0f,"Return");
  vita2d_draw_texture_scale(circleImage, menuRect.x + menuRect.w - 40,  menuRect.y + menuRect.h - 40, 1,1);
  vita2d_draw_texture_scale(crossImage,menuRect.x + 8, menuRect.y + menuRect.h - 40, 1,1);
  vita2d_font_draw_text(font, menuRect.x + 45, menuRect.y + menuRect.h - 16, RGBA8(helpTextR,helpTextG,helpTextB, 255), 20.0f, "Play Game");
  if(menuRect.y < target)
  {
    menuRect.y += 10;
    if(fade < 240)
    {
      fade += 10;
    }
  }
  if(menuRect.y > target)
  {
    menuRect.y -= 10;
    if(fade > 10)
    {
      fade -= 10;
    }
  }
  if(menuRect.y <= target && !goToMenu  && target == -300)
  {
    status = 2;
  }
  else if(menuRect.y <= target && goToMenu && target == -300)
  {
    status = 1;
  }


  /**quick reference:
    keys[0] = up;
    keys[1] = down;
    keys[2] = left;
    keys[3] = right;
    keys[4] = cross;
    keys[5] = square;
    keys[6] = triangle;
    keys[7] = circle;
    keys[8] = ly Up
    keys[9] = ly Down; **/

  if(keys[4])
  {
    if(!crossNeedsReset)
    {
      target = -300;
      crossNeedsReset = true;
    }
  }
  if(!keys[4])
  {
    crossNeedsReset = false;
  }
  if(keys[5])
  {
    target = -300;
    goToMenu = true;
  }
}

void HighScores::menuPartial(int scores_int[10], std::string scores_str[10])
{
  vita2d_draw_rectangle(menuRect.x, menuRect.y, menuRect.w, menuRect.h, RGBA8(menuBGColorR,menuBGColorG,menuBGColorB, fade));
  drawEmptyRect(menuRect, RGBA8(menuBorderR,menuBorderG,menuBorderB,fade));

  vita2d_font_draw_text(font, menuRect.x + menuRect.w / 3 - vita2d_font_text_width(font, 20.0f, scores_str[0].c_str()) / 2, menuRect.y + 20, RGBA8(mainTextR,mainTextG,mainTextB,255), 20.0f, "HighScores:");
  int tempIndex = 60 ;
  for(int i = 0; i < 10; i++)
  {
    vita2d_font_draw_textf(font, menuRect.x + menuRect.w / 2 - vita2d_font_text_width(font, 20.0f, scores_str[0].c_str()) / 2, menuRect.y  + tempIndex, RGBA8(mainTextR,mainTextG,mainTextB,255), 20.0f,"%s %d", scores_str[i].c_str(), scores_int[i]);
    tempIndex += 20;
  }

  vita2d_draw_texture_scale(crossImage,menuRect.x + 10, menuRect.y + menuRect.h - 40, 1,1);
  vita2d_font_draw_text(font, menuRect.x + 45, menuRect.y + menuRect.h - 20, RGBA8(helpTextR,helpTextG,helpTextB, 255), 20.0f, "Play Game");
  if(menuRect.y < target)
  {
    menuRect.y += 10;
    if(fade < 240)
    {
      fade += 10;
    }
  }
  if(menuRect.y > target)
  {
    menuRect.y -= 10;
    if(fade > 10)
    {
      fade -= 10;
    }
  }
}

int HighScores::getStatus()
{
  return status;
}

void HighScores::setStatus(int status)
{
  this->status = status;
}
