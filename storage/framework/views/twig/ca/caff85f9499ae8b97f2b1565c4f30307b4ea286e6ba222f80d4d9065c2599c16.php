<?php

/* anomaly.field_type.file::upload/partials/template */
class __TwigTemplate_694798d976de639a898afbf28de9b9c76d966e5c50cadecda90dc4d7bb74ec86 extends TwigBridge\Twig\Template
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
        echo "<div class=\"template hidden\">

    <div class=\"upload\">

        <small data-dz-name></small>

        <progress class=\"progress\" data-dz-uploadprogress value=\"0\" max=\"100\">0%</progress>

    </div>

</div>
";
    }

    public function getTemplateName()
    {
        return "anomaly.field_type.file::upload/partials/template";
    }

    public function getDebugInfo()
    {
        return array (  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<div class=\"template hidden\">

    <div class=\"upload\">

        <small data-dz-name></small>

        <progress class=\"progress\" data-dz-uploadprogress value=\"0\" max=\"100\">0%</progress>

    </div>

</div>
", "anomaly.field_type.file::upload/partials/template", "");
    }
}
