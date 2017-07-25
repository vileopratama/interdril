<?php

/* E:\xpyrocms\htdocs\interdril\vendor\anomaly\streams-platform\src\View\Command/../../../resources/views/table/ajax/footer.twig */
class __TwigTemplate_fb5233cbfc1903cf41adc7ad4bfafdbf93bdc3df3e46202258770f812ca4387e extends TwigBridge\Twig\Template
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
        echo "<div class=\"modal-footer\">

    <div class=\"pull-left actions\">
        ";
        // line 4
        echo call_user_func_array($this->env->getFunction('buttons')->getCallable(), array($this->getAttribute(($context["table"] ?? null), "actions", array())));
        echo "
    </div>

    ";
        // line 7
        if ($this->getAttribute($this->getAttribute($this->getAttribute(($context["table"] ?? null), "data", array()), "pagination", array()), "links", array())) {
            // line 8
            echo "        <div class=\"pull-right\">
            ";
            // line 9
            echo $this->getAttribute($this->getAttribute($this->getAttribute(($context["table"] ?? null), "data", array()), "pagination", array()), "links", array());
            echo "
        </div>
    ";
        }
        // line 12
        echo "
    <div style=\"clear: both;\"></div>

</div>
";
    }

    public function getTemplateName()
    {
        return "E:\\xpyrocms\\htdocs\\interdril\\vendor\\anomaly\\streams-platform\\src\\View\\Command/../../../resources/views/table/ajax/footer.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  41 => 12,  35 => 9,  32 => 8,  30 => 7,  24 => 4,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<div class=\"modal-footer\">

    <div class=\"pull-left actions\">
        {{ buttons(table.actions)|raw }}
    </div>

    {% if table.data.pagination.links %}
        <div class=\"pull-right\">
            {{ table.data.pagination.links|raw }}
        </div>
    {% endif %}

    <div style=\"clear: both;\"></div>

</div>
", "E:\\xpyrocms\\htdocs\\interdril\\vendor\\anomaly\\streams-platform\\src\\View\\Command/../../../resources/views/table/ajax/footer.twig", "");
    }
}
