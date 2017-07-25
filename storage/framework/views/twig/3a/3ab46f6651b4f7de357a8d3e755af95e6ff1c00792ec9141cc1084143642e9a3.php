<?php

/* E:\xpyrocms\htdocs\interdril\storage\streams/interdril/pages/types/2/layout.twig */
class __TwigTemplate_08423e66aaace8dcdfcbb5179a32a52189494097ae5445997fda3132d97681a7 extends TwigBridge\Twig\Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<section class=\"col-md-12 col-sm-12\">
\t";
        // line 2
        echo $this->getAttribute(($context["page"] ?? null), "content", array());
        echo "
</section>
<div class=\"row\" id=\"slide-image\">
\t<div class=\"row mx-content center\">
        <h3 class=\"title\"><span>";
        // line 6
        echo $this->getAttribute(($context["page"] ?? null), "title", array());
        echo "</span></h3>
    </div>
\t";
        // line 8
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["page"] ?? null), "images", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
            // line 9
            echo "\t<div class=\"col-md-3 col-sm-4\"><img id=\"";
            echo twig_escape_filter($this->env, $this->getAttribute($context["image"], "id", array()), "html", null, true);
            echo "\" class=\"animate\" src=\"";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["image"], "make", array(), "method"), "url", array(), "method"), "html", null, true);
            echo "\" data-effect=\"fadeInUp\"/></div>
\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 11
        echo "</div>";
    }

    public function getTemplateName()
    {
        return "E:\\xpyrocms\\htdocs\\interdril\\storage\\streams/interdril/pages/types/2/layout.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  49 => 11,  38 => 9,  34 => 8,  29 => 6,  22 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<section class=\"col-md-12 col-sm-12\">
\t{{ page.content|raw }}
</section>
<div class=\"row\" id=\"slide-image\">
\t<div class=\"row mx-content center\">
        <h3 class=\"title\"><span>{{ page.title|raw }}</span></h3>
    </div>
\t{% for image in page.images %}
\t<div class=\"col-md-3 col-sm-4\"><img id=\"{{ image.id }}\" class=\"animate\" src=\"{{ image.make().url() }}\" data-effect=\"fadeInUp\"/></div>
\t{% endfor %}
</div>", "E:\\xpyrocms\\htdocs\\interdril\\storage\\streams/interdril/pages/types/2/layout.twig", "");
    }
}
